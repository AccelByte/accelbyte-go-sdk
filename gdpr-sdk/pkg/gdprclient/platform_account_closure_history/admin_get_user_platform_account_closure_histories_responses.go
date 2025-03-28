// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_account_closure_history

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

// AdminGetUserPlatformAccountClosureHistoriesReader is a Reader for the AdminGetUserPlatformAccountClosureHistories structure.
type AdminGetUserPlatformAccountClosureHistoriesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserPlatformAccountClosureHistoriesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserPlatformAccountClosureHistoriesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetUserPlatformAccountClosureHistoriesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminGetUserPlatformAccountClosureHistoriesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminGetUserPlatformAccountClosureHistoriesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUserPlatformAccountClosureHistoriesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/admin/namespaces/{namespace}/users/platforms/closure/histories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserPlatformAccountClosureHistoriesOK creates a AdminGetUserPlatformAccountClosureHistoriesOK with default headers values
func NewAdminGetUserPlatformAccountClosureHistoriesOK() *AdminGetUserPlatformAccountClosureHistoriesOK {
	return &AdminGetUserPlatformAccountClosureHistoriesOK{}
}

/*AdminGetUserPlatformAccountClosureHistoriesOK handles this case with default header values.

  OK
*/
type AdminGetUserPlatformAccountClosureHistoriesOK struct {
	Payload *gdprclientmodels.DTOUserPlatformAccountClosureHistoriesResponse
}

func (o *AdminGetUserPlatformAccountClosureHistoriesOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/users/platforms/closure/histories][%d] adminGetUserPlatformAccountClosureHistoriesOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserPlatformAccountClosureHistoriesOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminGetUserPlatformAccountClosureHistoriesOK) GetPayload() *gdprclientmodels.DTOUserPlatformAccountClosureHistoriesResponse {
	return o.Payload
}

func (o *AdminGetUserPlatformAccountClosureHistoriesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.DTOUserPlatformAccountClosureHistoriesResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserPlatformAccountClosureHistoriesBadRequest creates a AdminGetUserPlatformAccountClosureHistoriesBadRequest with default headers values
func NewAdminGetUserPlatformAccountClosureHistoriesBadRequest() *AdminGetUserPlatformAccountClosureHistoriesBadRequest {
	return &AdminGetUserPlatformAccountClosureHistoriesBadRequest{}
}

/*AdminGetUserPlatformAccountClosureHistoriesBadRequest handles this case with default header values.

  Bad Request
*/
type AdminGetUserPlatformAccountClosureHistoriesBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetUserPlatformAccountClosureHistoriesBadRequest) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/users/platforms/closure/histories][%d] adminGetUserPlatformAccountClosureHistoriesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetUserPlatformAccountClosureHistoriesBadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminGetUserPlatformAccountClosureHistoriesBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserPlatformAccountClosureHistoriesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserPlatformAccountClosureHistoriesUnauthorized creates a AdminGetUserPlatformAccountClosureHistoriesUnauthorized with default headers values
func NewAdminGetUserPlatformAccountClosureHistoriesUnauthorized() *AdminGetUserPlatformAccountClosureHistoriesUnauthorized {
	return &AdminGetUserPlatformAccountClosureHistoriesUnauthorized{}
}

/*AdminGetUserPlatformAccountClosureHistoriesUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminGetUserPlatformAccountClosureHistoriesUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetUserPlatformAccountClosureHistoriesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/users/platforms/closure/histories][%d] adminGetUserPlatformAccountClosureHistoriesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminGetUserPlatformAccountClosureHistoriesUnauthorized) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminGetUserPlatformAccountClosureHistoriesUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserPlatformAccountClosureHistoriesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserPlatformAccountClosureHistoriesForbidden creates a AdminGetUserPlatformAccountClosureHistoriesForbidden with default headers values
func NewAdminGetUserPlatformAccountClosureHistoriesForbidden() *AdminGetUserPlatformAccountClosureHistoriesForbidden {
	return &AdminGetUserPlatformAccountClosureHistoriesForbidden{}
}

/*AdminGetUserPlatformAccountClosureHistoriesForbidden handles this case with default header values.

  Forbidden
*/
type AdminGetUserPlatformAccountClosureHistoriesForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetUserPlatformAccountClosureHistoriesForbidden) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/users/platforms/closure/histories][%d] adminGetUserPlatformAccountClosureHistoriesForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminGetUserPlatformAccountClosureHistoriesForbidden) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminGetUserPlatformAccountClosureHistoriesForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserPlatformAccountClosureHistoriesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserPlatformAccountClosureHistoriesInternalServerError creates a AdminGetUserPlatformAccountClosureHistoriesInternalServerError with default headers values
func NewAdminGetUserPlatformAccountClosureHistoriesInternalServerError() *AdminGetUserPlatformAccountClosureHistoriesInternalServerError {
	return &AdminGetUserPlatformAccountClosureHistoriesInternalServerError{}
}

/*AdminGetUserPlatformAccountClosureHistoriesInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetUserPlatformAccountClosureHistoriesInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminGetUserPlatformAccountClosureHistoriesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/admin/namespaces/{namespace}/users/platforms/closure/histories][%d] adminGetUserPlatformAccountClosureHistoriesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetUserPlatformAccountClosureHistoriesInternalServerError) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *AdminGetUserPlatformAccountClosureHistoriesInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminGetUserPlatformAccountClosureHistoriesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
