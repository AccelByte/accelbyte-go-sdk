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

// PutPlayerRecordConcurrentHandlerV1Reader is a Reader for the PutPlayerRecordConcurrentHandlerV1 structure.
type PutPlayerRecordConcurrentHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PutPlayerRecordConcurrentHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPutPlayerRecordConcurrentHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 204:
		result := NewPutPlayerRecordConcurrentHandlerV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPutPlayerRecordConcurrentHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPutPlayerRecordConcurrentHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPutPlayerRecordConcurrentHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 412:
		result := NewPutPlayerRecordConcurrentHandlerV1PreconditionFailed()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPutPlayerRecordConcurrentHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPutPlayerRecordConcurrentHandlerV1OK creates a PutPlayerRecordConcurrentHandlerV1OK with default headers values
func NewPutPlayerRecordConcurrentHandlerV1OK() *PutPlayerRecordConcurrentHandlerV1OK {
	return &PutPlayerRecordConcurrentHandlerV1OK{}
}

/*PutPlayerRecordConcurrentHandlerV1OK handles this case with default header values.

  Record saved
*/
type PutPlayerRecordConcurrentHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsPlayerRecordConcurrentUpdateResponse
}

func (o *PutPlayerRecordConcurrentHandlerV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}][%d] putPlayerRecordConcurrentHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *PutPlayerRecordConcurrentHandlerV1OK) ToJSONString() string {
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

func (o *PutPlayerRecordConcurrentHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsPlayerRecordConcurrentUpdateResponse {
	return o.Payload
}

func (o *PutPlayerRecordConcurrentHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPutPlayerRecordConcurrentHandlerV1NoContent creates a PutPlayerRecordConcurrentHandlerV1NoContent with default headers values
func NewPutPlayerRecordConcurrentHandlerV1NoContent() *PutPlayerRecordConcurrentHandlerV1NoContent {
	return &PutPlayerRecordConcurrentHandlerV1NoContent{}
}

/*PutPlayerRecordConcurrentHandlerV1NoContent handles this case with default header values.

  Record saved
*/
type PutPlayerRecordConcurrentHandlerV1NoContent struct {
}

func (o *PutPlayerRecordConcurrentHandlerV1NoContent) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}][%d] putPlayerRecordConcurrentHandlerV1NoContent ", 204)
}

func (o *PutPlayerRecordConcurrentHandlerV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPutPlayerRecordConcurrentHandlerV1BadRequest creates a PutPlayerRecordConcurrentHandlerV1BadRequest with default headers values
func NewPutPlayerRecordConcurrentHandlerV1BadRequest() *PutPlayerRecordConcurrentHandlerV1BadRequest {
	return &PutPlayerRecordConcurrentHandlerV1BadRequest{}
}

/*PutPlayerRecordConcurrentHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr><tr><td>18060</td><td>invalid request body</td></tr><tr><td>18064</td><td>validation error</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>18065</td><td>unable to update record</td></tr></table>
*/
type PutPlayerRecordConcurrentHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerRecordConcurrentHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}][%d] putPlayerRecordConcurrentHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PutPlayerRecordConcurrentHandlerV1BadRequest) ToJSONString() string {
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

func (o *PutPlayerRecordConcurrentHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerRecordConcurrentHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPutPlayerRecordConcurrentHandlerV1Unauthorized creates a PutPlayerRecordConcurrentHandlerV1Unauthorized with default headers values
func NewPutPlayerRecordConcurrentHandlerV1Unauthorized() *PutPlayerRecordConcurrentHandlerV1Unauthorized {
	return &PutPlayerRecordConcurrentHandlerV1Unauthorized{}
}

/*PutPlayerRecordConcurrentHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PutPlayerRecordConcurrentHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerRecordConcurrentHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}][%d] putPlayerRecordConcurrentHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PutPlayerRecordConcurrentHandlerV1Unauthorized) ToJSONString() string {
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

func (o *PutPlayerRecordConcurrentHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerRecordConcurrentHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPutPlayerRecordConcurrentHandlerV1Forbidden creates a PutPlayerRecordConcurrentHandlerV1Forbidden with default headers values
func NewPutPlayerRecordConcurrentHandlerV1Forbidden() *PutPlayerRecordConcurrentHandlerV1Forbidden {
	return &PutPlayerRecordConcurrentHandlerV1Forbidden{}
}

/*PutPlayerRecordConcurrentHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PutPlayerRecordConcurrentHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerRecordConcurrentHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}][%d] putPlayerRecordConcurrentHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PutPlayerRecordConcurrentHandlerV1Forbidden) ToJSONString() string {
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

func (o *PutPlayerRecordConcurrentHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerRecordConcurrentHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPutPlayerRecordConcurrentHandlerV1PreconditionFailed creates a PutPlayerRecordConcurrentHandlerV1PreconditionFailed with default headers values
func NewPutPlayerRecordConcurrentHandlerV1PreconditionFailed() *PutPlayerRecordConcurrentHandlerV1PreconditionFailed {
	return &PutPlayerRecordConcurrentHandlerV1PreconditionFailed{}
}

/*PutPlayerRecordConcurrentHandlerV1PreconditionFailed handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18066</td><td>precondition failed: record has changed</td></tr></table>
*/
type PutPlayerRecordConcurrentHandlerV1PreconditionFailed struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerRecordConcurrentHandlerV1PreconditionFailed) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}][%d] putPlayerRecordConcurrentHandlerV1PreconditionFailed  %+v", 412, o.ToJSONString())
}

func (o *PutPlayerRecordConcurrentHandlerV1PreconditionFailed) ToJSONString() string {
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

func (o *PutPlayerRecordConcurrentHandlerV1PreconditionFailed) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerRecordConcurrentHandlerV1PreconditionFailed) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPutPlayerRecordConcurrentHandlerV1InternalServerError creates a PutPlayerRecordConcurrentHandlerV1InternalServerError with default headers values
func NewPutPlayerRecordConcurrentHandlerV1InternalServerError() *PutPlayerRecordConcurrentHandlerV1InternalServerError {
	return &PutPlayerRecordConcurrentHandlerV1InternalServerError{}
}

/*PutPlayerRecordConcurrentHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>18061</td><td>unable to update record</td></tr></table>
*/
type PutPlayerRecordConcurrentHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerRecordConcurrentHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}][%d] putPlayerRecordConcurrentHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PutPlayerRecordConcurrentHandlerV1InternalServerError) ToJSONString() string {
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

func (o *PutPlayerRecordConcurrentHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerRecordConcurrentHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
