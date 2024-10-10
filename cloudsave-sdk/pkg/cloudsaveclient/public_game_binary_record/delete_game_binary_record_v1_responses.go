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

// DeleteGameBinaryRecordV1Reader is a Reader for the DeleteGameBinaryRecordV1 structure.
type DeleteGameBinaryRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteGameBinaryRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteGameBinaryRecordV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteGameBinaryRecordV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteGameBinaryRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteGameBinaryRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteGameBinaryRecordV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteGameBinaryRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /cloudsave/v1/namespaces/{namespace}/binaries/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteGameBinaryRecordV1NoContent creates a DeleteGameBinaryRecordV1NoContent with default headers values
func NewDeleteGameBinaryRecordV1NoContent() *DeleteGameBinaryRecordV1NoContent {
	return &DeleteGameBinaryRecordV1NoContent{}
}

/*DeleteGameBinaryRecordV1NoContent handles this case with default header values.

  Record deleted
*/
type DeleteGameBinaryRecordV1NoContent struct {
}

func (o *DeleteGameBinaryRecordV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/binaries/{key}][%d] deleteGameBinaryRecordV1NoContent ", 204)
}

func (o *DeleteGameBinaryRecordV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteGameBinaryRecordV1BadRequest creates a DeleteGameBinaryRecordV1BadRequest with default headers values
func NewDeleteGameBinaryRecordV1BadRequest() *DeleteGameBinaryRecordV1BadRequest {
	return &DeleteGameBinaryRecordV1BadRequest{}
}

/*DeleteGameBinaryRecordV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr></table>
*/
type DeleteGameBinaryRecordV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteGameBinaryRecordV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/binaries/{key}][%d] deleteGameBinaryRecordV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteGameBinaryRecordV1BadRequest) ToJSONString() string {
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

func (o *DeleteGameBinaryRecordV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteGameBinaryRecordV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGameBinaryRecordV1Unauthorized creates a DeleteGameBinaryRecordV1Unauthorized with default headers values
func NewDeleteGameBinaryRecordV1Unauthorized() *DeleteGameBinaryRecordV1Unauthorized {
	return &DeleteGameBinaryRecordV1Unauthorized{}
}

/*DeleteGameBinaryRecordV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteGameBinaryRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteGameBinaryRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/binaries/{key}][%d] deleteGameBinaryRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteGameBinaryRecordV1Unauthorized) ToJSONString() string {
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

func (o *DeleteGameBinaryRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteGameBinaryRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGameBinaryRecordV1Forbidden creates a DeleteGameBinaryRecordV1Forbidden with default headers values
func NewDeleteGameBinaryRecordV1Forbidden() *DeleteGameBinaryRecordV1Forbidden {
	return &DeleteGameBinaryRecordV1Forbidden{}
}

/*DeleteGameBinaryRecordV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type DeleteGameBinaryRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteGameBinaryRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/binaries/{key}][%d] deleteGameBinaryRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteGameBinaryRecordV1Forbidden) ToJSONString() string {
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

func (o *DeleteGameBinaryRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteGameBinaryRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGameBinaryRecordV1NotFound creates a DeleteGameBinaryRecordV1NotFound with default headers values
func NewDeleteGameBinaryRecordV1NotFound() *DeleteGameBinaryRecordV1NotFound {
	return &DeleteGameBinaryRecordV1NotFound{}
}

/*DeleteGameBinaryRecordV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18322</td><td>record not found</td></tr></table>
*/
type DeleteGameBinaryRecordV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteGameBinaryRecordV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/binaries/{key}][%d] deleteGameBinaryRecordV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteGameBinaryRecordV1NotFound) ToJSONString() string {
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

func (o *DeleteGameBinaryRecordV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteGameBinaryRecordV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteGameBinaryRecordV1InternalServerError creates a DeleteGameBinaryRecordV1InternalServerError with default headers values
func NewDeleteGameBinaryRecordV1InternalServerError() *DeleteGameBinaryRecordV1InternalServerError {
	return &DeleteGameBinaryRecordV1InternalServerError{}
}

/*DeleteGameBinaryRecordV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18320</td><td>unable to delete record</td></tr><tr><td>18322</td><td>record not found</td></tr></table>
*/
type DeleteGameBinaryRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeleteGameBinaryRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/binaries/{key}][%d] deleteGameBinaryRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteGameBinaryRecordV1InternalServerError) ToJSONString() string {
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

func (o *DeleteGameBinaryRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeleteGameBinaryRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
