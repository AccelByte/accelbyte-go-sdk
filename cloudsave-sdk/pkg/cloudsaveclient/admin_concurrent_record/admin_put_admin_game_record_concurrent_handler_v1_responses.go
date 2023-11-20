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

// AdminPutAdminGameRecordConcurrentHandlerV1Reader is a Reader for the AdminPutAdminGameRecordConcurrentHandlerV1 structure.
type AdminPutAdminGameRecordConcurrentHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPutAdminGameRecordConcurrentHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewAdminPutAdminGameRecordConcurrentHandlerV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPutAdminGameRecordConcurrentHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPutAdminGameRecordConcurrentHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPutAdminGameRecordConcurrentHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 412:
		result := NewAdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminPutAdminGameRecordConcurrentHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/admin/namespaces/{namespace}/concurrent/adminrecords/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPutAdminGameRecordConcurrentHandlerV1NoContent creates a AdminPutAdminGameRecordConcurrentHandlerV1NoContent with default headers values
func NewAdminPutAdminGameRecordConcurrentHandlerV1NoContent() *AdminPutAdminGameRecordConcurrentHandlerV1NoContent {
	return &AdminPutAdminGameRecordConcurrentHandlerV1NoContent{}
}

/*AdminPutAdminGameRecordConcurrentHandlerV1NoContent handles this case with default header values.

  Record saved
*/
type AdminPutAdminGameRecordConcurrentHandlerV1NoContent struct {
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1NoContent) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/concurrent/adminrecords/{key}][%d] adminPutAdminGameRecordConcurrentHandlerV1NoContent ", 204)
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewAdminPutAdminGameRecordConcurrentHandlerV1BadRequest creates a AdminPutAdminGameRecordConcurrentHandlerV1BadRequest with default headers values
func NewAdminPutAdminGameRecordConcurrentHandlerV1BadRequest() *AdminPutAdminGameRecordConcurrentHandlerV1BadRequest {
	return &AdminPutAdminGameRecordConcurrentHandlerV1BadRequest{}
}

/*AdminPutAdminGameRecordConcurrentHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18144</td><td>invalid request body</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>18146</td><td>invalid request body: size of the request body must be less than [%d]MB</td></tr></table>
*/
type AdminPutAdminGameRecordConcurrentHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/concurrent/adminrecords/{key}][%d] adminPutAdminGameRecordConcurrentHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1BadRequest) ToJSONString() string {
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

func (o *AdminPutAdminGameRecordConcurrentHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutAdminGameRecordConcurrentHandlerV1Unauthorized creates a AdminPutAdminGameRecordConcurrentHandlerV1Unauthorized with default headers values
func NewAdminPutAdminGameRecordConcurrentHandlerV1Unauthorized() *AdminPutAdminGameRecordConcurrentHandlerV1Unauthorized {
	return &AdminPutAdminGameRecordConcurrentHandlerV1Unauthorized{}
}

/*AdminPutAdminGameRecordConcurrentHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPutAdminGameRecordConcurrentHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/concurrent/adminrecords/{key}][%d] adminPutAdminGameRecordConcurrentHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1Unauthorized) ToJSONString() string {
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

func (o *AdminPutAdminGameRecordConcurrentHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutAdminGameRecordConcurrentHandlerV1Forbidden creates a AdminPutAdminGameRecordConcurrentHandlerV1Forbidden with default headers values
func NewAdminPutAdminGameRecordConcurrentHandlerV1Forbidden() *AdminPutAdminGameRecordConcurrentHandlerV1Forbidden {
	return &AdminPutAdminGameRecordConcurrentHandlerV1Forbidden{}
}

/*AdminPutAdminGameRecordConcurrentHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPutAdminGameRecordConcurrentHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/concurrent/adminrecords/{key}][%d] adminPutAdminGameRecordConcurrentHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1Forbidden) ToJSONString() string {
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

func (o *AdminPutAdminGameRecordConcurrentHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed creates a AdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed with default headers values
func NewAdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed() *AdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed {
	return &AdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed{}
}

/*AdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18180</td><td>precondition failed: record has changed</td></tr></table>
*/
type AdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/concurrent/adminrecords/{key}][%d] adminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed  %+v", 412, o.ToJSONString())
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed) ToJSONString() string {
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

func (o *AdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1PreconditionFailed) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminPutAdminGameRecordConcurrentHandlerV1InternalServerError creates a AdminPutAdminGameRecordConcurrentHandlerV1InternalServerError with default headers values
func NewAdminPutAdminGameRecordConcurrentHandlerV1InternalServerError() *AdminPutAdminGameRecordConcurrentHandlerV1InternalServerError {
	return &AdminPutAdminGameRecordConcurrentHandlerV1InternalServerError{}
}

/*AdminPutAdminGameRecordConcurrentHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18145</td><td>unable to marshal request body</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>18147</td><td>unable to update record</td></tr></table>
*/
type AdminPutAdminGameRecordConcurrentHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/concurrent/adminrecords/{key}][%d] adminPutAdminGameRecordConcurrentHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1InternalServerError) ToJSONString() string {
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

func (o *AdminPutAdminGameRecordConcurrentHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutAdminGameRecordConcurrentHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
