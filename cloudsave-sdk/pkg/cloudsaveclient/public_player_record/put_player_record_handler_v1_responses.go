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

// PutPlayerRecordHandlerV1Reader is a Reader for the PutPlayerRecordHandlerV1 structure.
type PutPlayerRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PutPlayerRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPutPlayerRecordHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPutPlayerRecordHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPutPlayerRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPutPlayerRecordHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPutPlayerRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPutPlayerRecordHandlerV1OK creates a PutPlayerRecordHandlerV1OK with default headers values
func NewPutPlayerRecordHandlerV1OK() *PutPlayerRecordHandlerV1OK {
	return &PutPlayerRecordHandlerV1OK{}
}

/*PutPlayerRecordHandlerV1OK handles this case with default header values.

  Record saved
*/
type PutPlayerRecordHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsPlayerRecordResponse
}

func (o *PutPlayerRecordHandlerV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}][%d] putPlayerRecordHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *PutPlayerRecordHandlerV1OK) ToJSONString() string {
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

func (o *PutPlayerRecordHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsPlayerRecordResponse {
	return o.Payload
}

func (o *PutPlayerRecordHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsPlayerRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPutPlayerRecordHandlerV1BadRequest creates a PutPlayerRecordHandlerV1BadRequest with default headers values
func NewPutPlayerRecordHandlerV1BadRequest() *PutPlayerRecordHandlerV1BadRequest {
	return &PutPlayerRecordHandlerV1BadRequest{}
}

/*PutPlayerRecordHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr><tr><td>18060</td><td>invalid request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PutPlayerRecordHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerRecordHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}][%d] putPlayerRecordHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PutPlayerRecordHandlerV1BadRequest) ToJSONString() string {
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

func (o *PutPlayerRecordHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerRecordHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPutPlayerRecordHandlerV1Unauthorized creates a PutPlayerRecordHandlerV1Unauthorized with default headers values
func NewPutPlayerRecordHandlerV1Unauthorized() *PutPlayerRecordHandlerV1Unauthorized {
	return &PutPlayerRecordHandlerV1Unauthorized{}
}

/*PutPlayerRecordHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PutPlayerRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}][%d] putPlayerRecordHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PutPlayerRecordHandlerV1Unauthorized) ToJSONString() string {
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

func (o *PutPlayerRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPutPlayerRecordHandlerV1Forbidden creates a PutPlayerRecordHandlerV1Forbidden with default headers values
func NewPutPlayerRecordHandlerV1Forbidden() *PutPlayerRecordHandlerV1Forbidden {
	return &PutPlayerRecordHandlerV1Forbidden{}
}

/*PutPlayerRecordHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18063</td><td>put action is forbidden on other user's record</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PutPlayerRecordHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerRecordHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}][%d] putPlayerRecordHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PutPlayerRecordHandlerV1Forbidden) ToJSONString() string {
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

func (o *PutPlayerRecordHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerRecordHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPutPlayerRecordHandlerV1InternalServerError creates a PutPlayerRecordHandlerV1InternalServerError with default headers values
func NewPutPlayerRecordHandlerV1InternalServerError() *PutPlayerRecordHandlerV1InternalServerError {
	return &PutPlayerRecordHandlerV1InternalServerError{}
}

/*PutPlayerRecordHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr><tr><td>18061</td><td>unable to update record</td></tr><tr><td>18005</td><td>unable to decode record</td></tr></table>
*/
type PutPlayerRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PutPlayerRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}][%d] putPlayerRecordHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PutPlayerRecordHandlerV1InternalServerError) ToJSONString() string {
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

func (o *PutPlayerRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PutPlayerRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
