// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_game_binary_record

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

// PutGameBinaryRecordV1Reader is a Reader for the PutGameBinaryRecordV1 structure.
type PutGameBinaryRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PutGameBinaryRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPutGameBinaryRecordV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPutGameBinaryRecordV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPutGameBinaryRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPutGameBinaryRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPutGameBinaryRecordV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPutGameBinaryRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/namespaces/{namespace}/binaries/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPutGameBinaryRecordV1OK creates a PutGameBinaryRecordV1OK with default headers values
func NewPutGameBinaryRecordV1OK() *PutGameBinaryRecordV1OK {
	return &PutGameBinaryRecordV1OK{}
}

/*PutGameBinaryRecordV1OK handles this case with default header values.

  Record saved
*/
type PutGameBinaryRecordV1OK struct {
	Payload *cloudsaveclientmodels.ModelsGameBinaryRecordResponse
}

func (o *PutGameBinaryRecordV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/binaries/{key}][%d] putGameBinaryRecordV1OK  %+v", 200, o.ToJSONString())
}

func (o *PutGameBinaryRecordV1OK) ToJSONString() string {
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

func (o *PutGameBinaryRecordV1OK) GetPayload() *cloudsaveclientmodels.ModelsGameBinaryRecordResponse {
	return o.Payload
}

func (o *PutGameBinaryRecordV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsGameBinaryRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPutGameBinaryRecordV1BadRequest creates a PutGameBinaryRecordV1BadRequest with default headers values
func NewPutGameBinaryRecordV1BadRequest() *PutGameBinaryRecordV1BadRequest {
	return &PutGameBinaryRecordV1BadRequest{}
}

/*PutGameBinaryRecordV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18316</td><td>invalid request body</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr></table>
*/
type PutGameBinaryRecordV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutGameBinaryRecordV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/binaries/{key}][%d] putGameBinaryRecordV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PutGameBinaryRecordV1BadRequest) ToJSONString() string {
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

func (o *PutGameBinaryRecordV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutGameBinaryRecordV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPutGameBinaryRecordV1Unauthorized creates a PutGameBinaryRecordV1Unauthorized with default headers values
func NewPutGameBinaryRecordV1Unauthorized() *PutGameBinaryRecordV1Unauthorized {
	return &PutGameBinaryRecordV1Unauthorized{}
}

/*PutGameBinaryRecordV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PutGameBinaryRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutGameBinaryRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/binaries/{key}][%d] putGameBinaryRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PutGameBinaryRecordV1Unauthorized) ToJSONString() string {
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

func (o *PutGameBinaryRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutGameBinaryRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPutGameBinaryRecordV1Forbidden creates a PutGameBinaryRecordV1Forbidden with default headers values
func NewPutGameBinaryRecordV1Forbidden() *PutGameBinaryRecordV1Forbidden {
	return &PutGameBinaryRecordV1Forbidden{}
}

/*PutGameBinaryRecordV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PutGameBinaryRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutGameBinaryRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/binaries/{key}][%d] putGameBinaryRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PutGameBinaryRecordV1Forbidden) ToJSONString() string {
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

func (o *PutGameBinaryRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutGameBinaryRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPutGameBinaryRecordV1NotFound creates a PutGameBinaryRecordV1NotFound with default headers values
func NewPutGameBinaryRecordV1NotFound() *PutGameBinaryRecordV1NotFound {
	return &PutGameBinaryRecordV1NotFound{}
}

/*PutGameBinaryRecordV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18317</td><td>record not found</td></tr></table>
*/
type PutGameBinaryRecordV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutGameBinaryRecordV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/binaries/{key}][%d] putGameBinaryRecordV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *PutGameBinaryRecordV1NotFound) ToJSONString() string {
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

func (o *PutGameBinaryRecordV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutGameBinaryRecordV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPutGameBinaryRecordV1InternalServerError creates a PutGameBinaryRecordV1InternalServerError with default headers values
func NewPutGameBinaryRecordV1InternalServerError() *PutGameBinaryRecordV1InternalServerError {
	return &PutGameBinaryRecordV1InternalServerError{}
}

/*PutGameBinaryRecordV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18318</td><td>unable to update record</td></tr></table>
*/
type PutGameBinaryRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutGameBinaryRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/binaries/{key}][%d] putGameBinaryRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PutGameBinaryRecordV1InternalServerError) ToJSONString() string {
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

func (o *PutGameBinaryRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutGameBinaryRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
