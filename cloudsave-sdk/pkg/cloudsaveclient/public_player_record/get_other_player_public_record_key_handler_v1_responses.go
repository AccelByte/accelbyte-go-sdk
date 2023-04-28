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

// GetOtherPlayerPublicRecordKeyHandlerV1Reader is a Reader for the GetOtherPlayerPublicRecordKeyHandlerV1 structure.
type GetOtherPlayerPublicRecordKeyHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetOtherPlayerPublicRecordKeyHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetOtherPlayerPublicRecordKeyHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetOtherPlayerPublicRecordKeyHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetOtherPlayerPublicRecordKeyHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetOtherPlayerPublicRecordKeyHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetOtherPlayerPublicRecordKeyHandlerV1OK creates a GetOtherPlayerPublicRecordKeyHandlerV1OK with default headers values
func NewGetOtherPlayerPublicRecordKeyHandlerV1OK() *GetOtherPlayerPublicRecordKeyHandlerV1OK {
	return &GetOtherPlayerPublicRecordKeyHandlerV1OK{}
}

/*GetOtherPlayerPublicRecordKeyHandlerV1OK handles this case with default header values.

  Successful operation
*/
type GetOtherPlayerPublicRecordKeyHandlerV1OK struct {
	Payload *cloudsaveclientmodels.ModelsListPlayerRecordKeysResponse
}

func (o *GetOtherPlayerPublicRecordKeyHandlerV1OK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public][%d] getOtherPlayerPublicRecordKeyHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetOtherPlayerPublicRecordKeyHandlerV1OK) ToJSONString() string {
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

func (o *GetOtherPlayerPublicRecordKeyHandlerV1OK) GetPayload() *cloudsaveclientmodels.ModelsListPlayerRecordKeysResponse {
	return o.Payload
}

func (o *GetOtherPlayerPublicRecordKeyHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsListPlayerRecordKeysResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetOtherPlayerPublicRecordKeyHandlerV1BadRequest creates a GetOtherPlayerPublicRecordKeyHandlerV1BadRequest with default headers values
func NewGetOtherPlayerPublicRecordKeyHandlerV1BadRequest() *GetOtherPlayerPublicRecordKeyHandlerV1BadRequest {
	return &GetOtherPlayerPublicRecordKeyHandlerV1BadRequest{}
}

/*GetOtherPlayerPublicRecordKeyHandlerV1BadRequest handles this case with default header values.

  Bad Request
*/
type GetOtherPlayerPublicRecordKeyHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetOtherPlayerPublicRecordKeyHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public][%d] getOtherPlayerPublicRecordKeyHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetOtherPlayerPublicRecordKeyHandlerV1BadRequest) ToJSONString() string {
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

func (o *GetOtherPlayerPublicRecordKeyHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetOtherPlayerPublicRecordKeyHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetOtherPlayerPublicRecordKeyHandlerV1Unauthorized creates a GetOtherPlayerPublicRecordKeyHandlerV1Unauthorized with default headers values
func NewGetOtherPlayerPublicRecordKeyHandlerV1Unauthorized() *GetOtherPlayerPublicRecordKeyHandlerV1Unauthorized {
	return &GetOtherPlayerPublicRecordKeyHandlerV1Unauthorized{}
}

/*GetOtherPlayerPublicRecordKeyHandlerV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetOtherPlayerPublicRecordKeyHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetOtherPlayerPublicRecordKeyHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public][%d] getOtherPlayerPublicRecordKeyHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetOtherPlayerPublicRecordKeyHandlerV1Unauthorized) ToJSONString() string {
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

func (o *GetOtherPlayerPublicRecordKeyHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetOtherPlayerPublicRecordKeyHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetOtherPlayerPublicRecordKeyHandlerV1InternalServerError creates a GetOtherPlayerPublicRecordKeyHandlerV1InternalServerError with default headers values
func NewGetOtherPlayerPublicRecordKeyHandlerV1InternalServerError() *GetOtherPlayerPublicRecordKeyHandlerV1InternalServerError {
	return &GetOtherPlayerPublicRecordKeyHandlerV1InternalServerError{}
}

/*GetOtherPlayerPublicRecordKeyHandlerV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetOtherPlayerPublicRecordKeyHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetOtherPlayerPublicRecordKeyHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/public][%d] getOtherPlayerPublicRecordKeyHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetOtherPlayerPublicRecordKeyHandlerV1InternalServerError) ToJSONString() string {
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

func (o *GetOtherPlayerPublicRecordKeyHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetOtherPlayerPublicRecordKeyHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
