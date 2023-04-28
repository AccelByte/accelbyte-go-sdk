// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_player_record

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

// DeletePlayerRecordHandlerV1Reader is a Reader for the DeletePlayerRecordHandlerV1 structure.
type DeletePlayerRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeletePlayerRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeletePlayerRecordHandlerV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeletePlayerRecordHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeletePlayerRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeletePlayerRecordHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeletePlayerRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeletePlayerRecordHandlerV1NoContent creates a DeletePlayerRecordHandlerV1NoContent with default headers values
func NewDeletePlayerRecordHandlerV1NoContent() *DeletePlayerRecordHandlerV1NoContent {
	return &DeletePlayerRecordHandlerV1NoContent{}
}

/*DeletePlayerRecordHandlerV1NoContent handles this case with default header values.

  Record deleted
*/
type DeletePlayerRecordHandlerV1NoContent struct {
}

func (o *DeletePlayerRecordHandlerV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}][%d] deletePlayerRecordHandlerV1NoContent ", 204)
}

func (o *DeletePlayerRecordHandlerV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeletePlayerRecordHandlerV1BadRequest creates a DeletePlayerRecordHandlerV1BadRequest with default headers values
func NewDeletePlayerRecordHandlerV1BadRequest() *DeletePlayerRecordHandlerV1BadRequest {
	return &DeletePlayerRecordHandlerV1BadRequest{}
}

/*DeletePlayerRecordHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr></table>
*/
type DeletePlayerRecordHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeletePlayerRecordHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}][%d] deletePlayerRecordHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeletePlayerRecordHandlerV1BadRequest) ToJSONString() string {
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

func (o *DeletePlayerRecordHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeletePlayerRecordHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeletePlayerRecordHandlerV1Unauthorized creates a DeletePlayerRecordHandlerV1Unauthorized with default headers values
func NewDeletePlayerRecordHandlerV1Unauthorized() *DeletePlayerRecordHandlerV1Unauthorized {
	return &DeletePlayerRecordHandlerV1Unauthorized{}
}

/*DeletePlayerRecordHandlerV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type DeletePlayerRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeletePlayerRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}][%d] deletePlayerRecordHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeletePlayerRecordHandlerV1Unauthorized) ToJSONString() string {
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

func (o *DeletePlayerRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeletePlayerRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeletePlayerRecordHandlerV1Forbidden creates a DeletePlayerRecordHandlerV1Forbidden with default headers values
func NewDeletePlayerRecordHandlerV1Forbidden() *DeletePlayerRecordHandlerV1Forbidden {
	return &DeletePlayerRecordHandlerV1Forbidden{}
}

/*DeletePlayerRecordHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18072</td><td>delete action is forbidden on other user's record</td></tr></table>
*/
type DeletePlayerRecordHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeletePlayerRecordHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}][%d] deletePlayerRecordHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeletePlayerRecordHandlerV1Forbidden) ToJSONString() string {
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

func (o *DeletePlayerRecordHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeletePlayerRecordHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeletePlayerRecordHandlerV1InternalServerError creates a DeletePlayerRecordHandlerV1InternalServerError with default headers values
func NewDeletePlayerRecordHandlerV1InternalServerError() *DeletePlayerRecordHandlerV1InternalServerError {
	return &DeletePlayerRecordHandlerV1InternalServerError{}
}

/*DeletePlayerRecordHandlerV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeletePlayerRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *DeletePlayerRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}][%d] deletePlayerRecordHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeletePlayerRecordHandlerV1InternalServerError) ToJSONString() string {
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

func (o *DeletePlayerRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *DeletePlayerRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
