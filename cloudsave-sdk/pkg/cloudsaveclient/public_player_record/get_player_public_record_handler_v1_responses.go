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

// GetPlayerPublicRecordHandlerV1Reader is a Reader for the GetPlayerPublicRecordHandlerV1 structure.
type GetPlayerPublicRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPlayerPublicRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPlayerPublicRecordHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetPlayerPublicRecordHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetPlayerPublicRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetPlayerPublicRecordHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPlayerPublicRecordHandlerV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetPlayerPublicRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPlayerPublicRecordHandlerV1OK creates a GetPlayerPublicRecordHandlerV1OK with default headers values
func NewGetPlayerPublicRecordHandlerV1OK() *GetPlayerPublicRecordHandlerV1OK {
	return &GetPlayerPublicRecordHandlerV1OK{}
}

/*GetPlayerPublicRecordHandlerV1OK handles this case with default header values.

  Record retrieved
*/
type GetPlayerPublicRecordHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsPlayerRecordResponse
}

func (o *GetPlayerPublicRecordHandlerV1OK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] getPlayerPublicRecordHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetPlayerPublicRecordHandlerV1OK) ToJSONString() string {
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

func (o *GetPlayerPublicRecordHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsPlayerRecordResponse {
	return o.Payload
}

func (o *GetPlayerPublicRecordHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPlayerPublicRecordHandlerV1BadRequest creates a GetPlayerPublicRecordHandlerV1BadRequest with default headers values
func NewGetPlayerPublicRecordHandlerV1BadRequest() *GetPlayerPublicRecordHandlerV1BadRequest {
	return &GetPlayerPublicRecordHandlerV1BadRequest{}
}

/*GetPlayerPublicRecordHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type GetPlayerPublicRecordHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetPlayerPublicRecordHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] getPlayerPublicRecordHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetPlayerPublicRecordHandlerV1BadRequest) ToJSONString() string {
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

func (o *GetPlayerPublicRecordHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetPlayerPublicRecordHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPlayerPublicRecordHandlerV1Unauthorized creates a GetPlayerPublicRecordHandlerV1Unauthorized with default headers values
func NewGetPlayerPublicRecordHandlerV1Unauthorized() *GetPlayerPublicRecordHandlerV1Unauthorized {
	return &GetPlayerPublicRecordHandlerV1Unauthorized{}
}

/*GetPlayerPublicRecordHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetPlayerPublicRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetPlayerPublicRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] getPlayerPublicRecordHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetPlayerPublicRecordHandlerV1Unauthorized) ToJSONString() string {
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

func (o *GetPlayerPublicRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetPlayerPublicRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPlayerPublicRecordHandlerV1Forbidden creates a GetPlayerPublicRecordHandlerV1Forbidden with default headers values
func NewGetPlayerPublicRecordHandlerV1Forbidden() *GetPlayerPublicRecordHandlerV1Forbidden {
	return &GetPlayerPublicRecordHandlerV1Forbidden{}
}

/*GetPlayerPublicRecordHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetPlayerPublicRecordHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetPlayerPublicRecordHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] getPlayerPublicRecordHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetPlayerPublicRecordHandlerV1Forbidden) ToJSONString() string {
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

func (o *GetPlayerPublicRecordHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetPlayerPublicRecordHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPlayerPublicRecordHandlerV1NotFound creates a GetPlayerPublicRecordHandlerV1NotFound with default headers values
func NewGetPlayerPublicRecordHandlerV1NotFound() *GetPlayerPublicRecordHandlerV1NotFound {
	return &GetPlayerPublicRecordHandlerV1NotFound{}
}

/*GetPlayerPublicRecordHandlerV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18081</td><td>record not found</td></tr></table>
*/
type GetPlayerPublicRecordHandlerV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetPlayerPublicRecordHandlerV1NotFound) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] getPlayerPublicRecordHandlerV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetPlayerPublicRecordHandlerV1NotFound) ToJSONString() string {
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

func (o *GetPlayerPublicRecordHandlerV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetPlayerPublicRecordHandlerV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPlayerPublicRecordHandlerV1InternalServerError creates a GetPlayerPublicRecordHandlerV1InternalServerError with default headers values
func NewGetPlayerPublicRecordHandlerV1InternalServerError() *GetPlayerPublicRecordHandlerV1InternalServerError {
	return &GetPlayerPublicRecordHandlerV1InternalServerError{}
}

/*GetPlayerPublicRecordHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18080</td><td>unable to get record</td></tr><tr><td>18006</td><td>unable to decode record</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetPlayerPublicRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetPlayerPublicRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public][%d] getPlayerPublicRecordHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetPlayerPublicRecordHandlerV1InternalServerError) ToJSONString() string {
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

func (o *GetPlayerPublicRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetPlayerPublicRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
