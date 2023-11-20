// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_game_record

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

// GetGameRecordHandlerV1Reader is a Reader for the GetGameRecordHandlerV1 structure.
type GetGameRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetGameRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetGameRecordHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetGameRecordHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetGameRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetGameRecordHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetGameRecordHandlerV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetGameRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/namespaces/{namespace}/records/{key} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetGameRecordHandlerV1OK creates a GetGameRecordHandlerV1OK with default headers values
func NewGetGameRecordHandlerV1OK() *GetGameRecordHandlerV1OK {
	return &GetGameRecordHandlerV1OK{}
}

/*GetGameRecordHandlerV1OK handles this case with default header values.

  Record retrieved
*/
type GetGameRecordHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsGameRecordResponse
}

func (o *GetGameRecordHandlerV1OK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/records/{key}][%d] getGameRecordHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetGameRecordHandlerV1OK) ToJSONString() string {
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

func (o *GetGameRecordHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsGameRecordResponse {
	return o.Payload
}

func (o *GetGameRecordHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsGameRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetGameRecordHandlerV1BadRequest creates a GetGameRecordHandlerV1BadRequest with default headers values
func NewGetGameRecordHandlerV1BadRequest() *GetGameRecordHandlerV1BadRequest {
	return &GetGameRecordHandlerV1BadRequest{}
}

/*GetGameRecordHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetGameRecordHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetGameRecordHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/records/{key}][%d] getGameRecordHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetGameRecordHandlerV1BadRequest) ToJSONString() string {
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

func (o *GetGameRecordHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetGameRecordHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameRecordHandlerV1Unauthorized creates a GetGameRecordHandlerV1Unauthorized with default headers values
func NewGetGameRecordHandlerV1Unauthorized() *GetGameRecordHandlerV1Unauthorized {
	return &GetGameRecordHandlerV1Unauthorized{}
}

/*GetGameRecordHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetGameRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetGameRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/records/{key}][%d] getGameRecordHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetGameRecordHandlerV1Unauthorized) ToJSONString() string {
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

func (o *GetGameRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetGameRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameRecordHandlerV1Forbidden creates a GetGameRecordHandlerV1Forbidden with default headers values
func NewGetGameRecordHandlerV1Forbidden() *GetGameRecordHandlerV1Forbidden {
	return &GetGameRecordHandlerV1Forbidden{}
}

/*GetGameRecordHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetGameRecordHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetGameRecordHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/records/{key}][%d] getGameRecordHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetGameRecordHandlerV1Forbidden) ToJSONString() string {
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

func (o *GetGameRecordHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetGameRecordHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameRecordHandlerV1NotFound creates a GetGameRecordHandlerV1NotFound with default headers values
func NewGetGameRecordHandlerV1NotFound() *GetGameRecordHandlerV1NotFound {
	return &GetGameRecordHandlerV1NotFound{}
}

/*GetGameRecordHandlerV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18003</td><td>record not found</td></tr></table>
*/
type GetGameRecordHandlerV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetGameRecordHandlerV1NotFound) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/records/{key}][%d] getGameRecordHandlerV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetGameRecordHandlerV1NotFound) ToJSONString() string {
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

func (o *GetGameRecordHandlerV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetGameRecordHandlerV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameRecordHandlerV1InternalServerError creates a GetGameRecordHandlerV1InternalServerError with default headers values
func NewGetGameRecordHandlerV1InternalServerError() *GetGameRecordHandlerV1InternalServerError {
	return &GetGameRecordHandlerV1InternalServerError{}
}

/*GetGameRecordHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18001</td><td>unable to get record</td></tr><tr><td>18005</td><td>unable to decode record</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetGameRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetGameRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/records/{key}][%d] getGameRecordHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetGameRecordHandlerV1InternalServerError) ToJSONString() string {
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

func (o *GetGameRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetGameRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
