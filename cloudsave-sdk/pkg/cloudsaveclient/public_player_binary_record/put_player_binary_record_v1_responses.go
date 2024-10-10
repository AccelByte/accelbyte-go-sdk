// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_player_binary_record

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

// PutPlayerBinaryRecordV1Reader is a Reader for the PutPlayerBinaryRecordV1 structure.
type PutPlayerBinaryRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PutPlayerBinaryRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPutPlayerBinaryRecordV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPutPlayerBinaryRecordV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPutPlayerBinaryRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPutPlayerBinaryRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPutPlayerBinaryRecordV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPutPlayerBinaryRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPutPlayerBinaryRecordV1OK creates a PutPlayerBinaryRecordV1OK with default headers values
func NewPutPlayerBinaryRecordV1OK() *PutPlayerBinaryRecordV1OK {
	return &PutPlayerBinaryRecordV1OK{}
}

/*PutPlayerBinaryRecordV1OK handles this case with default header values.

  Record saved
*/
type PutPlayerBinaryRecordV1OK struct {
	Payload *cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse
}

func (o *PutPlayerBinaryRecordV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] putPlayerBinaryRecordV1OK  %+v", 200, o.ToJSONString())
}

func (o *PutPlayerBinaryRecordV1OK) ToJSONString() string {
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

func (o *PutPlayerBinaryRecordV1OK) GetPayload() *cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse {
	return o.Payload
}

func (o *PutPlayerBinaryRecordV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPutPlayerBinaryRecordV1BadRequest creates a PutPlayerBinaryRecordV1BadRequest with default headers values
func NewPutPlayerBinaryRecordV1BadRequest() *PutPlayerBinaryRecordV1BadRequest {
	return &PutPlayerBinaryRecordV1BadRequest{}
}

/*PutPlayerBinaryRecordV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18332</td><td>invalid request body</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr></table>
*/
type PutPlayerBinaryRecordV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerBinaryRecordV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] putPlayerBinaryRecordV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PutPlayerBinaryRecordV1BadRequest) ToJSONString() string {
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

func (o *PutPlayerBinaryRecordV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerBinaryRecordV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPutPlayerBinaryRecordV1Unauthorized creates a PutPlayerBinaryRecordV1Unauthorized with default headers values
func NewPutPlayerBinaryRecordV1Unauthorized() *PutPlayerBinaryRecordV1Unauthorized {
	return &PutPlayerBinaryRecordV1Unauthorized{}
}

/*PutPlayerBinaryRecordV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PutPlayerBinaryRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerBinaryRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] putPlayerBinaryRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PutPlayerBinaryRecordV1Unauthorized) ToJSONString() string {
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

func (o *PutPlayerBinaryRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerBinaryRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPutPlayerBinaryRecordV1Forbidden creates a PutPlayerBinaryRecordV1Forbidden with default headers values
func NewPutPlayerBinaryRecordV1Forbidden() *PutPlayerBinaryRecordV1Forbidden {
	return &PutPlayerBinaryRecordV1Forbidden{}
}

/*PutPlayerBinaryRecordV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PutPlayerBinaryRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerBinaryRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] putPlayerBinaryRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PutPlayerBinaryRecordV1Forbidden) ToJSONString() string {
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

func (o *PutPlayerBinaryRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerBinaryRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPutPlayerBinaryRecordV1NotFound creates a PutPlayerBinaryRecordV1NotFound with default headers values
func NewPutPlayerBinaryRecordV1NotFound() *PutPlayerBinaryRecordV1NotFound {
	return &PutPlayerBinaryRecordV1NotFound{}
}

/*PutPlayerBinaryRecordV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18333</td><td>record not found</td></tr></table>
*/
type PutPlayerBinaryRecordV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerBinaryRecordV1NotFound) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] putPlayerBinaryRecordV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *PutPlayerBinaryRecordV1NotFound) ToJSONString() string {
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

func (o *PutPlayerBinaryRecordV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerBinaryRecordV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPutPlayerBinaryRecordV1InternalServerError creates a PutPlayerBinaryRecordV1InternalServerError with default headers values
func NewPutPlayerBinaryRecordV1InternalServerError() *PutPlayerBinaryRecordV1InternalServerError {
	return &PutPlayerBinaryRecordV1InternalServerError{}
}

/*PutPlayerBinaryRecordV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18334</td><td>unable to update record</td></tr></table>
*/
type PutPlayerBinaryRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerBinaryRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] putPlayerBinaryRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PutPlayerBinaryRecordV1InternalServerError) ToJSONString() string {
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

func (o *PutPlayerBinaryRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerBinaryRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
