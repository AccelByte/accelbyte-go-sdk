// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/sessionbrowser-sdk/pkg/sessionbrowserclientmodels"
)

// UpdateSettingsReader is a Reader for the UpdateSettings structure.
type UpdateSettingsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdateSettingsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdateSettingsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdateSettingsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewUpdateSettingsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpdateSettingsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/settings returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdateSettingsOK creates a UpdateSettingsOK with default headers values
func NewUpdateSettingsOK() *UpdateSettingsOK {
	return &UpdateSettingsOK{}
}

/*UpdateSettingsOK handles this case with default header values.

  session updated
*/
type UpdateSettingsOK struct {
	Payload *sessionbrowserclientmodels.ModelsSessionResponse
}

func (o *UpdateSettingsOK) Error() string {
	return fmt.Sprintf("[PUT /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/settings][%d] updateSettingsOK  %+v", 200, o.ToJSONString())
}

func (o *UpdateSettingsOK) ToJSONString() string {
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

func (o *UpdateSettingsOK) GetPayload() *sessionbrowserclientmodels.ModelsSessionResponse {
	return o.Payload
}

func (o *UpdateSettingsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.ModelsSessionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateSettingsBadRequest creates a UpdateSettingsBadRequest with default headers values
func NewUpdateSettingsBadRequest() *UpdateSettingsBadRequest {
	return &UpdateSettingsBadRequest{}
}

/*UpdateSettingsBadRequest handles this case with default header values.

  malformed request
*/
type UpdateSettingsBadRequest struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *UpdateSettingsBadRequest) Error() string {
	return fmt.Sprintf("[PUT /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/settings][%d] updateSettingsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdateSettingsBadRequest) ToJSONString() string {
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

func (o *UpdateSettingsBadRequest) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *UpdateSettingsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateSettingsNotFound creates a UpdateSettingsNotFound with default headers values
func NewUpdateSettingsNotFound() *UpdateSettingsNotFound {
	return &UpdateSettingsNotFound{}
}

/*UpdateSettingsNotFound handles this case with default header values.

  session not found
*/
type UpdateSettingsNotFound struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *UpdateSettingsNotFound) Error() string {
	return fmt.Sprintf("[PUT /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/settings][%d] updateSettingsNotFound  %+v", 404, o.ToJSONString())
}

func (o *UpdateSettingsNotFound) ToJSONString() string {
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

func (o *UpdateSettingsNotFound) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *UpdateSettingsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdateSettingsInternalServerError creates a UpdateSettingsInternalServerError with default headers values
func NewUpdateSettingsInternalServerError() *UpdateSettingsInternalServerError {
	return &UpdateSettingsInternalServerError{}
}

/*UpdateSettingsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type UpdateSettingsInternalServerError struct {
	Payload *sessionbrowserclientmodels.RestapiErrorResponseV2
}

func (o *UpdateSettingsInternalServerError) Error() string {
	return fmt.Sprintf("[PUT /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/settings][%d] updateSettingsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpdateSettingsInternalServerError) ToJSONString() string {
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

func (o *UpdateSettingsInternalServerError) GetPayload() *sessionbrowserclientmodels.RestapiErrorResponseV2 {
	return o.Payload
}

func (o *UpdateSettingsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(sessionbrowserclientmodels.RestapiErrorResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
