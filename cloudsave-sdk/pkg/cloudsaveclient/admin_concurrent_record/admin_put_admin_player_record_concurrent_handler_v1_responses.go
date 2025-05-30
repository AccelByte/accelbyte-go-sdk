// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_concurrent_record

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

// AdminPutAdminPlayerRecordConcurrentHandlerV1Reader is a Reader for the AdminPutAdminPlayerRecordConcurrentHandlerV1 structure.
type AdminPutAdminPlayerRecordConcurrentHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminPutAdminPlayerRecordConcurrentHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 204:
		result := NewAdminPutAdminPlayerRecordConcurrentHandlerV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 412:
		result := NewAdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/adminrecords/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPutAdminPlayerRecordConcurrentHandlerV1OK creates a AdminPutAdminPlayerRecordConcurrentHandlerV1OK with default headers values
func NewAdminPutAdminPlayerRecordConcurrentHandlerV1OK() *AdminPutAdminPlayerRecordConcurrentHandlerV1OK {
	return &AdminPutAdminPlayerRecordConcurrentHandlerV1OK{}
}

/*AdminPutAdminPlayerRecordConcurrentHandlerV1OK handles this case with default header values.

  Record saved
*/
type AdminPutAdminPlayerRecordConcurrentHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsPlayerRecordConcurrentUpdateResponse
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/adminrecords/{key}][%d] adminPutAdminPlayerRecordConcurrentHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1OK) ToJSONString() string {
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

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsPlayerRecordConcurrentUpdateResponse {
	return o.Payload
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsPlayerRecordConcurrentUpdateResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminPutAdminPlayerRecordConcurrentHandlerV1NoContent creates a AdminPutAdminPlayerRecordConcurrentHandlerV1NoContent with default headers values
func NewAdminPutAdminPlayerRecordConcurrentHandlerV1NoContent() *AdminPutAdminPlayerRecordConcurrentHandlerV1NoContent {
	return &AdminPutAdminPlayerRecordConcurrentHandlerV1NoContent{}
}

/*AdminPutAdminPlayerRecordConcurrentHandlerV1NoContent handles this case with default header values.

  Record saved
*/
type AdminPutAdminPlayerRecordConcurrentHandlerV1NoContent struct {
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1NoContent) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/adminrecords/{key}][%d] adminPutAdminPlayerRecordConcurrentHandlerV1NoContent ", 204)
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest creates a AdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest with default headers values
func NewAdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest() *AdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest {
	return &AdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest{}
}

/*AdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>18156</td><td>invalid request body</td></tr><tr><td>18181</td><td>validation error</td></tr></table>
*/
type AdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/adminrecords/{key}][%d] adminPutAdminPlayerRecordConcurrentHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest) ToJSONString() string {
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

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized creates a AdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized with default headers values
func NewAdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized() *AdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized {
	return &AdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized{}
}

/*AdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/adminrecords/{key}][%d] adminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized) ToJSONString() string {
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

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden creates a AdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden with default headers values
func NewAdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden() *AdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden {
	return &AdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden{}
}

/*AdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/adminrecords/{key}][%d] adminPutAdminPlayerRecordConcurrentHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden) ToJSONString() string {
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

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed creates a AdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed with default headers values
func NewAdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed() *AdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed {
	return &AdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed{}
}

/*AdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18183</td><td>precondition failed: record has changed</td></tr></table>
*/
type AdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/adminrecords/{key}][%d] adminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed  %+v", 412, o.ToJSONString())
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed) ToJSONString() string {
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

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1PreconditionFailed) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError creates a AdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError with default headers values
func NewAdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError() *AdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError {
	return &AdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError{}
}

/*AdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>18182</td><td>unable to update record</td></tr></table>
*/
type AdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/concurrent/adminrecords/{key}][%d] adminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError) ToJSONString() string {
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

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminPlayerRecordConcurrentHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
