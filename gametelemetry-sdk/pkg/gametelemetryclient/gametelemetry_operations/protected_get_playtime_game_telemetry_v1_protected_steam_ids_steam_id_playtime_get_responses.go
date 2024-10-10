// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package gametelemetry_operations

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/gametelemetry-sdk/pkg/gametelemetryclientmodels"
)

// ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetReader is a Reader for the ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGet structure.
type ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /game-telemetry/v1/protected/steamIds/{steamId}/playtime returns an error %d: %s", response.Code(), string(data))
	}
}

// NewProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK creates a ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK with default headers values
func NewProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK() *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK {
	return &ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK{}
}

/*ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK handles this case with default header values.

  Successful Response
*/
type ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK struct {
	Payload *gametelemetryclientmodels.PlayTimeResponse
}

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK) Error() string {
	return fmt.Sprintf("[GET /game-telemetry/v1/protected/steamIds/{steamId}/playtime][%d] protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetOK  %+v", 200, o.ToJSONString())
}

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK) ToJSONString() string {
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

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK) GetPayload() *gametelemetryclientmodels.PlayTimeResponse {
	return o.Payload
}

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gametelemetryclientmodels.PlayTimeResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound creates a ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound with default headers values
func NewProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound() *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound {
	return &ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound{}
}

/*ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound handles this case with default header values.

  User not found
*/
type ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound struct {
	Payload *gametelemetryclientmodels.BaseErrorResponse
}

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound) Error() string {
	return fmt.Sprintf("[GET /game-telemetry/v1/protected/steamIds/{steamId}/playtime][%d] protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetNotFound  %+v", 404, o.ToJSONString())
}

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound) ToJSONString() string {
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

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound) GetPayload() *gametelemetryclientmodels.BaseErrorResponse {
	return o.Payload
}

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gametelemetryclientmodels.BaseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity creates a ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity with default headers values
func NewProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity() *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity {
	return &ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity{}
}

/*ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity handles this case with default header values.

  Unable to process request
*/
type ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity struct {
	Payload *gametelemetryclientmodels.BaseErrorResponse
}

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /game-telemetry/v1/protected/steamIds/{steamId}/playtime][%d] protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity) ToJSONString() string {
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

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity) GetPayload() *gametelemetryclientmodels.BaseErrorResponse {
	return o.Payload
}

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gametelemetryclientmodels.BaseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError creates a ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError with default headers values
func NewProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError() *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError {
	return &ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError{}
}

/*ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError struct {
	Payload *gametelemetryclientmodels.BaseErrorResponse
}

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError) Error() string {
	return fmt.Sprintf("[GET /game-telemetry/v1/protected/steamIds/{steamId}/playtime][%d] protectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGetInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError) ToJSONString() string {
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

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError) GetPayload() *gametelemetryclientmodels.BaseErrorResponse {
	return o.Payload
}

func (o *ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIDPlaytimeGetInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gametelemetryclientmodels.BaseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
