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

// GetOtherPlayerPublicRecordHandlerV1Reader is a Reader for the GetOtherPlayerPublicRecordHandlerV1 structure.
type GetOtherPlayerPublicRecordHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetOtherPlayerPublicRecordHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetOtherPlayerPublicRecordHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetOtherPlayerPublicRecordHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetOtherPlayerPublicRecordHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetOtherPlayerPublicRecordHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetOtherPlayerPublicRecordHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetOtherPlayerPublicRecordHandlerV1OK creates a GetOtherPlayerPublicRecordHandlerV1OK with default headers values
func NewGetOtherPlayerPublicRecordHandlerV1OK() *GetOtherPlayerPublicRecordHandlerV1OK {
	return &GetOtherPlayerPublicRecordHandlerV1OK{}
}

/*GetOtherPlayerPublicRecordHandlerV1OK handles this case with default header values.

  Successful operation
*/
type GetOtherPlayerPublicRecordHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse
}

func (o *GetOtherPlayerPublicRecordHandlerV1OK) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public/bulk][%d] getOtherPlayerPublicRecordHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetOtherPlayerPublicRecordHandlerV1OK) ToJSONString() string {
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

func (o *GetOtherPlayerPublicRecordHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse {
	return o.Payload
}

func (o *GetOtherPlayerPublicRecordHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsBulkGetPlayerRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetOtherPlayerPublicRecordHandlerV1BadRequest creates a GetOtherPlayerPublicRecordHandlerV1BadRequest with default headers values
func NewGetOtherPlayerPublicRecordHandlerV1BadRequest() *GetOtherPlayerPublicRecordHandlerV1BadRequest {
	return &GetOtherPlayerPublicRecordHandlerV1BadRequest{}
}

/*GetOtherPlayerPublicRecordHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18125</td><td>invalid request body</td></tr><tr><td>18126</td><td>request record keys list exceed max size [%d]</td></tr></table>
*/
type GetOtherPlayerPublicRecordHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetOtherPlayerPublicRecordHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public/bulk][%d] getOtherPlayerPublicRecordHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetOtherPlayerPublicRecordHandlerV1BadRequest) ToJSONString() string {
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

func (o *GetOtherPlayerPublicRecordHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetOtherPlayerPublicRecordHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetOtherPlayerPublicRecordHandlerV1Unauthorized creates a GetOtherPlayerPublicRecordHandlerV1Unauthorized with default headers values
func NewGetOtherPlayerPublicRecordHandlerV1Unauthorized() *GetOtherPlayerPublicRecordHandlerV1Unauthorized {
	return &GetOtherPlayerPublicRecordHandlerV1Unauthorized{}
}

/*GetOtherPlayerPublicRecordHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetOtherPlayerPublicRecordHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetOtherPlayerPublicRecordHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public/bulk][%d] getOtherPlayerPublicRecordHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetOtherPlayerPublicRecordHandlerV1Unauthorized) ToJSONString() string {
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

func (o *GetOtherPlayerPublicRecordHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetOtherPlayerPublicRecordHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetOtherPlayerPublicRecordHandlerV1Forbidden creates a GetOtherPlayerPublicRecordHandlerV1Forbidden with default headers values
func NewGetOtherPlayerPublicRecordHandlerV1Forbidden() *GetOtherPlayerPublicRecordHandlerV1Forbidden {
	return &GetOtherPlayerPublicRecordHandlerV1Forbidden{}
}

/*GetOtherPlayerPublicRecordHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetOtherPlayerPublicRecordHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetOtherPlayerPublicRecordHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public/bulk][%d] getOtherPlayerPublicRecordHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetOtherPlayerPublicRecordHandlerV1Forbidden) ToJSONString() string {
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

func (o *GetOtherPlayerPublicRecordHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetOtherPlayerPublicRecordHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetOtherPlayerPublicRecordHandlerV1InternalServerError creates a GetOtherPlayerPublicRecordHandlerV1InternalServerError with default headers values
func NewGetOtherPlayerPublicRecordHandlerV1InternalServerError() *GetOtherPlayerPublicRecordHandlerV1InternalServerError {
	return &GetOtherPlayerPublicRecordHandlerV1InternalServerError{}
}

/*GetOtherPlayerPublicRecordHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18124</td><td>unable to get record</td></tr><tr><td>18006</td><td>unable to decode record</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetOtherPlayerPublicRecordHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetOtherPlayerPublicRecordHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public/bulk][%d] getOtherPlayerPublicRecordHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetOtherPlayerPublicRecordHandlerV1InternalServerError) ToJSONString() string {
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

func (o *GetOtherPlayerPublicRecordHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetOtherPlayerPublicRecordHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
