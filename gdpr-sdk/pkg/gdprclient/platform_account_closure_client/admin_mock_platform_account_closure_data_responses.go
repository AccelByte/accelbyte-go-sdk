// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_account_closure_client

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

// AdminMockPlatformAccountClosureDataReader is a Reader for the AdminMockPlatformAccountClosureData structure.
type AdminMockPlatformAccountClosureDataReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminMockPlatformAccountClosureDataReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminMockPlatformAccountClosureDataNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminMockPlatformAccountClosureDataBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminMockPlatformAccountClosureDataUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminMockPlatformAccountClosureDataForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminMockPlatformAccountClosureDataInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/mock returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminMockPlatformAccountClosureDataNoContent creates a AdminMockPlatformAccountClosureDataNoContent with default headers values
func NewAdminMockPlatformAccountClosureDataNoContent() *AdminMockPlatformAccountClosureDataNoContent {
	return &AdminMockPlatformAccountClosureDataNoContent{}
}

/*AdminMockPlatformAccountClosureDataNoContent handles this case with default header values.

  No Content
*/
type AdminMockPlatformAccountClosureDataNoContent struct {
}

func (o *AdminMockPlatformAccountClosureDataNoContent) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/mock][%d] adminMockPlatformAccountClosureDataNoContent ", 204)
}

func (o *AdminMockPlatformAccountClosureDataNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminMockPlatformAccountClosureDataBadRequest creates a AdminMockPlatformAccountClosureDataBadRequest with default headers values
func NewAdminMockPlatformAccountClosureDataBadRequest() *AdminMockPlatformAccountClosureDataBadRequest {
	return &AdminMockPlatformAccountClosureDataBadRequest{}
}

/*AdminMockPlatformAccountClosureDataBadRequest handles this case with default header values.

  Bad Request
*/
type AdminMockPlatformAccountClosureDataBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminMockPlatformAccountClosureDataBadRequest) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/mock][%d] adminMockPlatformAccountClosureDataBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminMockPlatformAccountClosureDataBadRequest) ToJSONString() string {
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

func (o *AdminMockPlatformAccountClosureDataBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminMockPlatformAccountClosureDataBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminMockPlatformAccountClosureDataUnauthorized creates a AdminMockPlatformAccountClosureDataUnauthorized with default headers values
func NewAdminMockPlatformAccountClosureDataUnauthorized() *AdminMockPlatformAccountClosureDataUnauthorized {
	return &AdminMockPlatformAccountClosureDataUnauthorized{}
}

/*AdminMockPlatformAccountClosureDataUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminMockPlatformAccountClosureDataUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminMockPlatformAccountClosureDataUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/mock][%d] adminMockPlatformAccountClosureDataUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminMockPlatformAccountClosureDataUnauthorized) ToJSONString() string {
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

func (o *AdminMockPlatformAccountClosureDataUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminMockPlatformAccountClosureDataUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminMockPlatformAccountClosureDataForbidden creates a AdminMockPlatformAccountClosureDataForbidden with default headers values
func NewAdminMockPlatformAccountClosureDataForbidden() *AdminMockPlatformAccountClosureDataForbidden {
	return &AdminMockPlatformAccountClosureDataForbidden{}
}

/*AdminMockPlatformAccountClosureDataForbidden handles this case with default header values.

  Forbidden
*/
type AdminMockPlatformAccountClosureDataForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminMockPlatformAccountClosureDataForbidden) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/mock][%d] adminMockPlatformAccountClosureDataForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminMockPlatformAccountClosureDataForbidden) ToJSONString() string {
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

func (o *AdminMockPlatformAccountClosureDataForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminMockPlatformAccountClosureDataForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminMockPlatformAccountClosureDataInternalServerError creates a AdminMockPlatformAccountClosureDataInternalServerError with default headers values
func NewAdminMockPlatformAccountClosureDataInternalServerError() *AdminMockPlatformAccountClosureDataInternalServerError {
	return &AdminMockPlatformAccountClosureDataInternalServerError{}
}

/*AdminMockPlatformAccountClosureDataInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminMockPlatformAccountClosureDataInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *AdminMockPlatformAccountClosureDataInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/admin/namespaces/{namespace}/platforms/{platform}/closure/mock][%d] adminMockPlatformAccountClosureDataInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminMockPlatformAccountClosureDataInternalServerError) ToJSONString() string {
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

func (o *AdminMockPlatformAccountClosureDataInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminMockPlatformAccountClosureDataInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
