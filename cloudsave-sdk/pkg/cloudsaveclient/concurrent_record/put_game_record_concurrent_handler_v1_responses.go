// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package concurrent_record

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

// PutGameRecordConcurrentHandlerV1Reader is a Reader for the PutGameRecordConcurrentHandlerV1 structure.
type PutGameRecordConcurrentHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PutGameRecordConcurrentHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPutGameRecordConcurrentHandlerV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPutGameRecordConcurrentHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPutGameRecordConcurrentHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPutGameRecordConcurrentHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 412:
		result := NewPutGameRecordConcurrentHandlerV1PreconditionFailed()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPutGameRecordConcurrentHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/namespaces/{namespace}/concurrent/records/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPutGameRecordConcurrentHandlerV1NoContent creates a PutGameRecordConcurrentHandlerV1NoContent with default headers values
func NewPutGameRecordConcurrentHandlerV1NoContent() *PutGameRecordConcurrentHandlerV1NoContent {
	return &PutGameRecordConcurrentHandlerV1NoContent{}
}

/*PutGameRecordConcurrentHandlerV1NoContent handles this case with default header values.

  Record saved
*/
type PutGameRecordConcurrentHandlerV1NoContent struct {
}

func (o *PutGameRecordConcurrentHandlerV1NoContent) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/concurrent/records/{key}][%d] putGameRecordConcurrentHandlerV1NoContent ", 204)
}

func (o *PutGameRecordConcurrentHandlerV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPutGameRecordConcurrentHandlerV1BadRequest creates a PutGameRecordConcurrentHandlerV1BadRequest with default headers values
func NewPutGameRecordConcurrentHandlerV1BadRequest() *PutGameRecordConcurrentHandlerV1BadRequest {
	return &PutGameRecordConcurrentHandlerV1BadRequest{}
}

/*PutGameRecordConcurrentHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr><tr><td>18060</td><td>invalid request body</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>18052</td><td>invalid request body: size of the request body must be less than [%d]MB</td></tr></table>
*/
type PutGameRecordConcurrentHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutGameRecordConcurrentHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/concurrent/records/{key}][%d] putGameRecordConcurrentHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PutGameRecordConcurrentHandlerV1BadRequest) ToJSONString() string {
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

func (o *PutGameRecordConcurrentHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutGameRecordConcurrentHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPutGameRecordConcurrentHandlerV1Unauthorized creates a PutGameRecordConcurrentHandlerV1Unauthorized with default headers values
func NewPutGameRecordConcurrentHandlerV1Unauthorized() *PutGameRecordConcurrentHandlerV1Unauthorized {
	return &PutGameRecordConcurrentHandlerV1Unauthorized{}
}

/*PutGameRecordConcurrentHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PutGameRecordConcurrentHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutGameRecordConcurrentHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/concurrent/records/{key}][%d] putGameRecordConcurrentHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PutGameRecordConcurrentHandlerV1Unauthorized) ToJSONString() string {
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

func (o *PutGameRecordConcurrentHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutGameRecordConcurrentHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPutGameRecordConcurrentHandlerV1Forbidden creates a PutGameRecordConcurrentHandlerV1Forbidden with default headers values
func NewPutGameRecordConcurrentHandlerV1Forbidden() *PutGameRecordConcurrentHandlerV1Forbidden {
	return &PutGameRecordConcurrentHandlerV1Forbidden{}
}

/*PutGameRecordConcurrentHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PutGameRecordConcurrentHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutGameRecordConcurrentHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/concurrent/records/{key}][%d] putGameRecordConcurrentHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PutGameRecordConcurrentHandlerV1Forbidden) ToJSONString() string {
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

func (o *PutGameRecordConcurrentHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutGameRecordConcurrentHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPutGameRecordConcurrentHandlerV1PreconditionFailed creates a PutGameRecordConcurrentHandlerV1PreconditionFailed with default headers values
func NewPutGameRecordConcurrentHandlerV1PreconditionFailed() *PutGameRecordConcurrentHandlerV1PreconditionFailed {
	return &PutGameRecordConcurrentHandlerV1PreconditionFailed{}
}

/*PutGameRecordConcurrentHandlerV1PreconditionFailed handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18056</td><td>precondition failed: record has changed</td></tr></table>
*/
type PutGameRecordConcurrentHandlerV1PreconditionFailed struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutGameRecordConcurrentHandlerV1PreconditionFailed) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/concurrent/records/{key}][%d] putGameRecordConcurrentHandlerV1PreconditionFailed  %+v", 412, o.ToJSONString())
}

func (o *PutGameRecordConcurrentHandlerV1PreconditionFailed) ToJSONString() string {
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

func (o *PutGameRecordConcurrentHandlerV1PreconditionFailed) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutGameRecordConcurrentHandlerV1PreconditionFailed) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPutGameRecordConcurrentHandlerV1InternalServerError creates a PutGameRecordConcurrentHandlerV1InternalServerError with default headers values
func NewPutGameRecordConcurrentHandlerV1InternalServerError() *PutGameRecordConcurrentHandlerV1InternalServerError {
	return &PutGameRecordConcurrentHandlerV1InternalServerError{}
}

/*PutGameRecordConcurrentHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18051</td><td>unable to marshal request body</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>18053</td><td>unable to update record</td></tr></table>
*/
type PutGameRecordConcurrentHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutGameRecordConcurrentHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/concurrent/records/{key}][%d] putGameRecordConcurrentHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PutGameRecordConcurrentHandlerV1InternalServerError) ToJSONString() string {
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

func (o *PutGameRecordConcurrentHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutGameRecordConcurrentHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
