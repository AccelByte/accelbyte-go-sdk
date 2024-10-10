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

// AdminPutGameRecordConcurrentHandlerV1Reader is a Reader for the AdminPutGameRecordConcurrentHandlerV1 structure.
type AdminPutGameRecordConcurrentHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPutGameRecordConcurrentHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminPutGameRecordConcurrentHandlerV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPutGameRecordConcurrentHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPutGameRecordConcurrentHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPutGameRecordConcurrentHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 412:
		result := NewAdminPutGameRecordConcurrentHandlerV1PreconditionFailed()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPutGameRecordConcurrentHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/admin/namespaces/{namespace}/concurrent/records/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPutGameRecordConcurrentHandlerV1NoContent creates a AdminPutGameRecordConcurrentHandlerV1NoContent with default headers values
func NewAdminPutGameRecordConcurrentHandlerV1NoContent() *AdminPutGameRecordConcurrentHandlerV1NoContent {
	return &AdminPutGameRecordConcurrentHandlerV1NoContent{}
}

/*AdminPutGameRecordConcurrentHandlerV1NoContent handles this case with default header values.

  Record saved
*/
type AdminPutGameRecordConcurrentHandlerV1NoContent struct {
}

func (o *AdminPutGameRecordConcurrentHandlerV1NoContent) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/concurrent/records/{key}][%d] adminPutGameRecordConcurrentHandlerV1NoContent ", 204)
}

func (o *AdminPutGameRecordConcurrentHandlerV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminPutGameRecordConcurrentHandlerV1BadRequest creates a AdminPutGameRecordConcurrentHandlerV1BadRequest with default headers values
func NewAdminPutGameRecordConcurrentHandlerV1BadRequest() *AdminPutGameRecordConcurrentHandlerV1BadRequest {
	return &AdminPutGameRecordConcurrentHandlerV1BadRequest{}
}

/*AdminPutGameRecordConcurrentHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr><tr><td>18060</td><td>invalid request body</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>18052</td><td>invalid request body: size of the request body must be less than [%d]MB</td></tr></table>
*/
type AdminPutGameRecordConcurrentHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutGameRecordConcurrentHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/concurrent/records/{key}][%d] adminPutGameRecordConcurrentHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPutGameRecordConcurrentHandlerV1BadRequest) ToJSONString() string {
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

func (o *AdminPutGameRecordConcurrentHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutGameRecordConcurrentHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutGameRecordConcurrentHandlerV1Unauthorized creates a AdminPutGameRecordConcurrentHandlerV1Unauthorized with default headers values
func NewAdminPutGameRecordConcurrentHandlerV1Unauthorized() *AdminPutGameRecordConcurrentHandlerV1Unauthorized {
	return &AdminPutGameRecordConcurrentHandlerV1Unauthorized{}
}

/*AdminPutGameRecordConcurrentHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPutGameRecordConcurrentHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutGameRecordConcurrentHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/concurrent/records/{key}][%d] adminPutGameRecordConcurrentHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPutGameRecordConcurrentHandlerV1Unauthorized) ToJSONString() string {
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

func (o *AdminPutGameRecordConcurrentHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutGameRecordConcurrentHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutGameRecordConcurrentHandlerV1Forbidden creates a AdminPutGameRecordConcurrentHandlerV1Forbidden with default headers values
func NewAdminPutGameRecordConcurrentHandlerV1Forbidden() *AdminPutGameRecordConcurrentHandlerV1Forbidden {
	return &AdminPutGameRecordConcurrentHandlerV1Forbidden{}
}

/*AdminPutGameRecordConcurrentHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPutGameRecordConcurrentHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutGameRecordConcurrentHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/concurrent/records/{key}][%d] adminPutGameRecordConcurrentHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPutGameRecordConcurrentHandlerV1Forbidden) ToJSONString() string {
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

func (o *AdminPutGameRecordConcurrentHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutGameRecordConcurrentHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutGameRecordConcurrentHandlerV1PreconditionFailed creates a AdminPutGameRecordConcurrentHandlerV1PreconditionFailed with default headers values
func NewAdminPutGameRecordConcurrentHandlerV1PreconditionFailed() *AdminPutGameRecordConcurrentHandlerV1PreconditionFailed {
	return &AdminPutGameRecordConcurrentHandlerV1PreconditionFailed{}
}

/*AdminPutGameRecordConcurrentHandlerV1PreconditionFailed handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18056</td><td>precondition failed: record has changed</td></tr></table>
*/
type AdminPutGameRecordConcurrentHandlerV1PreconditionFailed struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutGameRecordConcurrentHandlerV1PreconditionFailed) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/concurrent/records/{key}][%d] adminPutGameRecordConcurrentHandlerV1PreconditionFailed  %+v", 412, o.ToJSONString())
}

func (o *AdminPutGameRecordConcurrentHandlerV1PreconditionFailed) ToJSONString() string {
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

func (o *AdminPutGameRecordConcurrentHandlerV1PreconditionFailed) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutGameRecordConcurrentHandlerV1PreconditionFailed) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutGameRecordConcurrentHandlerV1InternalServerError creates a AdminPutGameRecordConcurrentHandlerV1InternalServerError with default headers values
func NewAdminPutGameRecordConcurrentHandlerV1InternalServerError() *AdminPutGameRecordConcurrentHandlerV1InternalServerError {
	return &AdminPutGameRecordConcurrentHandlerV1InternalServerError{}
}

/*AdminPutGameRecordConcurrentHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18051</td><td>unable to marshal request body</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>18053</td><td>unable to update record</td></tr></table>
*/
type AdminPutGameRecordConcurrentHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutGameRecordConcurrentHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/concurrent/records/{key}][%d] adminPutGameRecordConcurrentHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPutGameRecordConcurrentHandlerV1InternalServerError) ToJSONString() string {
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

func (o *AdminPutGameRecordConcurrentHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutGameRecordConcurrentHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
