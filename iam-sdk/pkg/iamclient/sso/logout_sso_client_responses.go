// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package sso

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// LogoutSSOClientReader is a Reader for the LogoutSSOClient structure.
type LogoutSSOClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *LogoutSSOClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewLogoutSSOClientNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewLogoutSSOClientNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewLogoutSSOClientUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewLogoutSSOClientInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /iam/v3/sso/{platformId}/logout returns an error %d: %s", response.Code(), string(data))
	}
}

// NewLogoutSSOClientNoContent creates a LogoutSSOClientNoContent with default headers values
func NewLogoutSSOClientNoContent() *LogoutSSOClientNoContent {
	return &LogoutSSOClientNoContent{}
}

/*LogoutSSOClientNoContent handles this case with default header values.

  No Content
*/
type LogoutSSOClientNoContent struct {
}

func (o *LogoutSSOClientNoContent) Error() string {
	return fmt.Sprintf("[POST /iam/v3/sso/{platformId}/logout][%d] logoutSsoClientNoContent ", 204)
}

func (o *LogoutSSOClientNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewLogoutSSOClientNotFound creates a LogoutSSOClientNotFound with default headers values
func NewLogoutSSOClientNotFound() *LogoutSSOClientNotFound {
	return &LogoutSSOClientNotFound{}
}

/*LogoutSSOClientNotFound handles this case with default header values.

  Not Found
*/
type LogoutSSOClientNotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *LogoutSSOClientNotFound) Error() string {
	return fmt.Sprintf("[POST /iam/v3/sso/{platformId}/logout][%d] logoutSsoClientNotFound  %+v", 404, o.ToJSONString())
}

func (o *LogoutSSOClientNotFound) ToJSONString() string {
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

func (o *LogoutSSOClientNotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *LogoutSSOClientNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewLogoutSSOClientUnprocessableEntity creates a LogoutSSOClientUnprocessableEntity with default headers values
func NewLogoutSSOClientUnprocessableEntity() *LogoutSSOClientUnprocessableEntity {
	return &LogoutSSOClientUnprocessableEntity{}
}

/*LogoutSSOClientUnprocessableEntity handles this case with default header values.

  Unprocessable Entity
*/
type LogoutSSOClientUnprocessableEntity struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *LogoutSSOClientUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /iam/v3/sso/{platformId}/logout][%d] logoutSsoClientUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *LogoutSSOClientUnprocessableEntity) ToJSONString() string {
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

func (o *LogoutSSOClientUnprocessableEntity) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *LogoutSSOClientUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewLogoutSSOClientInternalServerError creates a LogoutSSOClientInternalServerError with default headers values
func NewLogoutSSOClientInternalServerError() *LogoutSSOClientInternalServerError {
	return &LogoutSSOClientInternalServerError{}
}

/*LogoutSSOClientInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type LogoutSSOClientInternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *LogoutSSOClientInternalServerError) Error() string {
	return fmt.Sprintf("[POST /iam/v3/sso/{platformId}/logout][%d] logoutSsoClientInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *LogoutSSOClientInternalServerError) ToJSONString() string {
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

func (o *LogoutSSOClientInternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *LogoutSSOClientInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
