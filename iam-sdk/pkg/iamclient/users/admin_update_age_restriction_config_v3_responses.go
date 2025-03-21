// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// AdminUpdateAgeRestrictionConfigV3Reader is a Reader for the AdminUpdateAgeRestrictionConfigV3 structure.
type AdminUpdateAgeRestrictionConfigV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateAgeRestrictionConfigV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateAgeRestrictionConfigV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateAgeRestrictionConfigV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateAgeRestrictionConfigV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateAgeRestrictionConfigV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminUpdateAgeRestrictionConfigV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v3/admin/namespaces/{namespace}/agerestrictions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateAgeRestrictionConfigV3OK creates a AdminUpdateAgeRestrictionConfigV3OK with default headers values
func NewAdminUpdateAgeRestrictionConfigV3OK() *AdminUpdateAgeRestrictionConfigV3OK {
	return &AdminUpdateAgeRestrictionConfigV3OK{}
}

/*AdminUpdateAgeRestrictionConfigV3OK handles this case with default header values.

  OK
*/
type AdminUpdateAgeRestrictionConfigV3OK struct {
	Payload *iamclientmodels.ModelAgeRestrictionResponseV3
}

func (o *AdminUpdateAgeRestrictionConfigV3OK) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/agerestrictions][%d] adminUpdateAgeRestrictionConfigV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminUpdateAgeRestrictionConfigV3OK) ToJSONString() string {
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

func (o *AdminUpdateAgeRestrictionConfigV3OK) GetPayload() *iamclientmodels.ModelAgeRestrictionResponseV3 {
	return o.Payload
}

func (o *AdminUpdateAgeRestrictionConfigV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelAgeRestrictionResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateAgeRestrictionConfigV3BadRequest creates a AdminUpdateAgeRestrictionConfigV3BadRequest with default headers values
func NewAdminUpdateAgeRestrictionConfigV3BadRequest() *AdminUpdateAgeRestrictionConfigV3BadRequest {
	return &AdminUpdateAgeRestrictionConfigV3BadRequest{}
}

/*AdminUpdateAgeRestrictionConfigV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminUpdateAgeRestrictionConfigV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateAgeRestrictionConfigV3BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/agerestrictions][%d] adminUpdateAgeRestrictionConfigV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminUpdateAgeRestrictionConfigV3BadRequest) ToJSONString() string {
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

func (o *AdminUpdateAgeRestrictionConfigV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateAgeRestrictionConfigV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateAgeRestrictionConfigV3Unauthorized creates a AdminUpdateAgeRestrictionConfigV3Unauthorized with default headers values
func NewAdminUpdateAgeRestrictionConfigV3Unauthorized() *AdminUpdateAgeRestrictionConfigV3Unauthorized {
	return &AdminUpdateAgeRestrictionConfigV3Unauthorized{}
}

/*AdminUpdateAgeRestrictionConfigV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminUpdateAgeRestrictionConfigV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateAgeRestrictionConfigV3Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/agerestrictions][%d] adminUpdateAgeRestrictionConfigV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminUpdateAgeRestrictionConfigV3Unauthorized) ToJSONString() string {
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

func (o *AdminUpdateAgeRestrictionConfigV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateAgeRestrictionConfigV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateAgeRestrictionConfigV3Forbidden creates a AdminUpdateAgeRestrictionConfigV3Forbidden with default headers values
func NewAdminUpdateAgeRestrictionConfigV3Forbidden() *AdminUpdateAgeRestrictionConfigV3Forbidden {
	return &AdminUpdateAgeRestrictionConfigV3Forbidden{}
}

/*AdminUpdateAgeRestrictionConfigV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminUpdateAgeRestrictionConfigV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateAgeRestrictionConfigV3Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/agerestrictions][%d] adminUpdateAgeRestrictionConfigV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminUpdateAgeRestrictionConfigV3Forbidden) ToJSONString() string {
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

func (o *AdminUpdateAgeRestrictionConfigV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateAgeRestrictionConfigV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateAgeRestrictionConfigV3InternalServerError creates a AdminUpdateAgeRestrictionConfigV3InternalServerError with default headers values
func NewAdminUpdateAgeRestrictionConfigV3InternalServerError() *AdminUpdateAgeRestrictionConfigV3InternalServerError {
	return &AdminUpdateAgeRestrictionConfigV3InternalServerError{}
}

/*AdminUpdateAgeRestrictionConfigV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminUpdateAgeRestrictionConfigV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminUpdateAgeRestrictionConfigV3InternalServerError) Error() string {
	return fmt.Sprintf("[PATCH /iam/v3/admin/namespaces/{namespace}/agerestrictions][%d] adminUpdateAgeRestrictionConfigV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminUpdateAgeRestrictionConfigV3InternalServerError) ToJSONString() string {
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

func (o *AdminUpdateAgeRestrictionConfigV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminUpdateAgeRestrictionConfigV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
