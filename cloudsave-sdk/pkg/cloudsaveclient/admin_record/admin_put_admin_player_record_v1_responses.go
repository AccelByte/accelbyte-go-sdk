// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_record

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// AdminPutAdminPlayerRecordV1Reader is a Reader for the AdminPutAdminPlayerRecordV1 structure.
type AdminPutAdminPlayerRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPutAdminPlayerRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminPutAdminPlayerRecordV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPutAdminPlayerRecordV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPutAdminPlayerRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPutAdminPlayerRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPutAdminPlayerRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPutAdminPlayerRecordV1OK creates a AdminPutAdminPlayerRecordV1OK with default headers values
func NewAdminPutAdminPlayerRecordV1OK() *AdminPutAdminPlayerRecordV1OK {
	return &AdminPutAdminPlayerRecordV1OK{}
}

/*AdminPutAdminPlayerRecordV1OK handles this case with default header values.

  Record in user-level saved
*/
type AdminPutAdminPlayerRecordV1OK struct {
	Payload *cloudsaveclientmodels.ModelsAdminPlayerRecordResponse
}

func (o *AdminPutAdminPlayerRecordV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminPutAdminPlayerRecordV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminPutAdminPlayerRecordV1OK) ToJSONString() string {
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

func (o *AdminPutAdminPlayerRecordV1OK) GetPayload() *cloudsaveclientmodels.ModelsAdminPlayerRecordResponse {
	return o.Payload
}

func (o *AdminPutAdminPlayerRecordV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsAdminPlayerRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPutAdminPlayerRecordV1BadRequest creates a AdminPutAdminPlayerRecordV1BadRequest with default headers values
func NewAdminPutAdminPlayerRecordV1BadRequest() *AdminPutAdminPlayerRecordV1BadRequest {
	return &AdminPutAdminPlayerRecordV1BadRequest{}
}

/*AdminPutAdminPlayerRecordV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18156</td><td>invalid request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminPutAdminPlayerRecordV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminPlayerRecordV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminPutAdminPlayerRecordV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPutAdminPlayerRecordV1BadRequest) ToJSONString() string {
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

func (o *AdminPutAdminPlayerRecordV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminPlayerRecordV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPutAdminPlayerRecordV1Unauthorized creates a AdminPutAdminPlayerRecordV1Unauthorized with default headers values
func NewAdminPutAdminPlayerRecordV1Unauthorized() *AdminPutAdminPlayerRecordV1Unauthorized {
	return &AdminPutAdminPlayerRecordV1Unauthorized{}
}

/*AdminPutAdminPlayerRecordV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPutAdminPlayerRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminPlayerRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminPutAdminPlayerRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPutAdminPlayerRecordV1Unauthorized) ToJSONString() string {
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

func (o *AdminPutAdminPlayerRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminPlayerRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPutAdminPlayerRecordV1Forbidden creates a AdminPutAdminPlayerRecordV1Forbidden with default headers values
func NewAdminPutAdminPlayerRecordV1Forbidden() *AdminPutAdminPlayerRecordV1Forbidden {
	return &AdminPutAdminPlayerRecordV1Forbidden{}
}

/*AdminPutAdminPlayerRecordV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPutAdminPlayerRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminPlayerRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminPutAdminPlayerRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPutAdminPlayerRecordV1Forbidden) ToJSONString() string {
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

func (o *AdminPutAdminPlayerRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminPlayerRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPutAdminPlayerRecordV1InternalServerError creates a AdminPutAdminPlayerRecordV1InternalServerError with default headers values
func NewAdminPutAdminPlayerRecordV1InternalServerError() *AdminPutAdminPlayerRecordV1InternalServerError {
	return &AdminPutAdminPlayerRecordV1InternalServerError{}
}

/*AdminPutAdminPlayerRecordV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>18061</td><td>unable to update record</td></tr><tr><td>18162</td><td>unable to decode record</td></tr></table>
*/
type AdminPutAdminPlayerRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminPlayerRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords/{key}][%d] adminPutAdminPlayerRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPutAdminPlayerRecordV1InternalServerError) ToJSONString() string {
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

func (o *AdminPutAdminPlayerRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminPlayerRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
