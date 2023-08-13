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

// GetPlayerPublicBinaryRecordsV1Reader is a Reader for the GetPlayerPublicBinaryRecordsV1 structure.
type GetPlayerPublicBinaryRecordsV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPlayerPublicBinaryRecordsV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPlayerPublicBinaryRecordsV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetPlayerPublicBinaryRecordsV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPlayerPublicBinaryRecordsV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetPlayerPublicBinaryRecordsV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/public returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPlayerPublicBinaryRecordsV1OK creates a GetPlayerPublicBinaryRecordsV1OK with default headers values
func NewGetPlayerPublicBinaryRecordsV1OK() *GetPlayerPublicBinaryRecordsV1OK {
	return &GetPlayerPublicBinaryRecordsV1OK{}
}

/*GetPlayerPublicBinaryRecordsV1OK handles this case with default header values.

  Record retrieved
*/
type GetPlayerPublicBinaryRecordsV1OK struct {
	Payload *cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse
}

func (o *GetPlayerPublicBinaryRecordsV1OK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/public][%d] getPlayerPublicBinaryRecordsV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetPlayerPublicBinaryRecordsV1OK) ToJSONString() string {
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

func (o *GetPlayerPublicBinaryRecordsV1OK) GetPayload() *cloudsaveclientmodels.ModelsPlayerBinaryRecordResponse {
	return o.Payload
}

func (o *GetPlayerPublicBinaryRecordsV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPlayerPublicBinaryRecordsV1Unauthorized creates a GetPlayerPublicBinaryRecordsV1Unauthorized with default headers values
func NewGetPlayerPublicBinaryRecordsV1Unauthorized() *GetPlayerPublicBinaryRecordsV1Unauthorized {
	return &GetPlayerPublicBinaryRecordsV1Unauthorized{}
}

/*GetPlayerPublicBinaryRecordsV1Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetPlayerPublicBinaryRecordsV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetPlayerPublicBinaryRecordsV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/public][%d] getPlayerPublicBinaryRecordsV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetPlayerPublicBinaryRecordsV1Unauthorized) ToJSONString() string {
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

func (o *GetPlayerPublicBinaryRecordsV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetPlayerPublicBinaryRecordsV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPlayerPublicBinaryRecordsV1NotFound creates a GetPlayerPublicBinaryRecordsV1NotFound with default headers values
func NewGetPlayerPublicBinaryRecordsV1NotFound() *GetPlayerPublicBinaryRecordsV1NotFound {
	return &GetPlayerPublicBinaryRecordsV1NotFound{}
}

/*GetPlayerPublicBinaryRecordsV1NotFound handles this case with default header values.

  Not Found
*/
type GetPlayerPublicBinaryRecordsV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetPlayerPublicBinaryRecordsV1NotFound) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/public][%d] getPlayerPublicBinaryRecordsV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetPlayerPublicBinaryRecordsV1NotFound) ToJSONString() string {
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

func (o *GetPlayerPublicBinaryRecordsV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetPlayerPublicBinaryRecordsV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPlayerPublicBinaryRecordsV1InternalServerError creates a GetPlayerPublicBinaryRecordsV1InternalServerError with default headers values
func NewGetPlayerPublicBinaryRecordsV1InternalServerError() *GetPlayerPublicBinaryRecordsV1InternalServerError {
	return &GetPlayerPublicBinaryRecordsV1InternalServerError{}
}

/*GetPlayerPublicBinaryRecordsV1InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetPlayerPublicBinaryRecordsV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetPlayerPublicBinaryRecordsV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/public][%d] getPlayerPublicBinaryRecordsV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetPlayerPublicBinaryRecordsV1InternalServerError) ToJSONString() string {
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

func (o *GetPlayerPublicBinaryRecordsV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetPlayerPublicBinaryRecordsV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
