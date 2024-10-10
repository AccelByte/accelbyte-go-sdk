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

// DeletePlayerBinaryRecordV1Reader is a Reader for the DeletePlayerBinaryRecordV1 structure.
type DeletePlayerBinaryRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeletePlayerBinaryRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeletePlayerBinaryRecordV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeletePlayerBinaryRecordV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeletePlayerBinaryRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeletePlayerBinaryRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeletePlayerBinaryRecordV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeletePlayerBinaryRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeletePlayerBinaryRecordV1NoContent creates a DeletePlayerBinaryRecordV1NoContent with default headers values
func NewDeletePlayerBinaryRecordV1NoContent() *DeletePlayerBinaryRecordV1NoContent {
	return &DeletePlayerBinaryRecordV1NoContent{}
}

/*DeletePlayerBinaryRecordV1NoContent handles this case with default header values.

  Record deleted
*/
type DeletePlayerBinaryRecordV1NoContent struct {
}

func (o *DeletePlayerBinaryRecordV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] deletePlayerBinaryRecordV1NoContent ", 204)
}

func (o *DeletePlayerBinaryRecordV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeletePlayerBinaryRecordV1BadRequest creates a DeletePlayerBinaryRecordV1BadRequest with default headers values
func NewDeletePlayerBinaryRecordV1BadRequest() *DeletePlayerBinaryRecordV1BadRequest {
	return &DeletePlayerBinaryRecordV1BadRequest{}
}

/*DeletePlayerBinaryRecordV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr></table>
*/
type DeletePlayerBinaryRecordV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeletePlayerBinaryRecordV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] deletePlayerBinaryRecordV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeletePlayerBinaryRecordV1BadRequest) ToJSONString() string {
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

func (o *DeletePlayerBinaryRecordV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeletePlayerBinaryRecordV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeletePlayerBinaryRecordV1Unauthorized creates a DeletePlayerBinaryRecordV1Unauthorized with default headers values
func NewDeletePlayerBinaryRecordV1Unauthorized() *DeletePlayerBinaryRecordV1Unauthorized {
	return &DeletePlayerBinaryRecordV1Unauthorized{}
}

/*DeletePlayerBinaryRecordV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeletePlayerBinaryRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeletePlayerBinaryRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] deletePlayerBinaryRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeletePlayerBinaryRecordV1Unauthorized) ToJSONString() string {
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

func (o *DeletePlayerBinaryRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeletePlayerBinaryRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeletePlayerBinaryRecordV1Forbidden creates a DeletePlayerBinaryRecordV1Forbidden with default headers values
func NewDeletePlayerBinaryRecordV1Forbidden() *DeletePlayerBinaryRecordV1Forbidden {
	return &DeletePlayerBinaryRecordV1Forbidden{}
}

/*DeletePlayerBinaryRecordV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type DeletePlayerBinaryRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeletePlayerBinaryRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] deletePlayerBinaryRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeletePlayerBinaryRecordV1Forbidden) ToJSONString() string {
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

func (o *DeletePlayerBinaryRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeletePlayerBinaryRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeletePlayerBinaryRecordV1NotFound creates a DeletePlayerBinaryRecordV1NotFound with default headers values
func NewDeletePlayerBinaryRecordV1NotFound() *DeletePlayerBinaryRecordV1NotFound {
	return &DeletePlayerBinaryRecordV1NotFound{}
}

/*DeletePlayerBinaryRecordV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18338</td><td>record not found</td></tr></table>
*/
type DeletePlayerBinaryRecordV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeletePlayerBinaryRecordV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] deletePlayerBinaryRecordV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeletePlayerBinaryRecordV1NotFound) ToJSONString() string {
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

func (o *DeletePlayerBinaryRecordV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeletePlayerBinaryRecordV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeletePlayerBinaryRecordV1InternalServerError creates a DeletePlayerBinaryRecordV1InternalServerError with default headers values
func NewDeletePlayerBinaryRecordV1InternalServerError() *DeletePlayerBinaryRecordV1InternalServerError {
	return &DeletePlayerBinaryRecordV1InternalServerError{}
}

/*DeletePlayerBinaryRecordV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18336</td><td>unable to delete record</td></tr><tr><td>18338</td><td>record not found</td></tr></table>
*/
type DeletePlayerBinaryRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeletePlayerBinaryRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}][%d] deletePlayerBinaryRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeletePlayerBinaryRecordV1InternalServerError) ToJSONString() string {
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

func (o *DeletePlayerBinaryRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeletePlayerBinaryRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
