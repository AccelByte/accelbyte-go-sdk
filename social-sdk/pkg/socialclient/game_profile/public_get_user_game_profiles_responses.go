// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_profile

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// PublicGetUserGameProfilesReader is a Reader for the PublicGetUserGameProfiles structure.
type PublicGetUserGameProfilesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserGameProfilesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserGameProfilesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetUserGameProfilesBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetUserGameProfilesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetUserGameProfilesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetUserGameProfilesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/public/namespaces/{namespace}/profiles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserGameProfilesOK creates a PublicGetUserGameProfilesOK with default headers values
func NewPublicGetUserGameProfilesOK() *PublicGetUserGameProfilesOK {
	return &PublicGetUserGameProfilesOK{}
}

/*PublicGetUserGameProfilesOK handles this case with default header values.

  successful operation
*/
type PublicGetUserGameProfilesOK struct {
	Payload []*socialclientmodels.UserGameProfiles
}

func (o *PublicGetUserGameProfilesOK) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/profiles][%d] publicGetUserGameProfilesOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserGameProfilesOK) ToJSONString() string {
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

func (o *PublicGetUserGameProfilesOK) GetPayload() []*socialclientmodels.UserGameProfiles {
	return o.Payload
}

func (o *PublicGetUserGameProfilesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserGameProfilesBadRequest creates a PublicGetUserGameProfilesBadRequest with default headers values
func NewPublicGetUserGameProfilesBadRequest() *PublicGetUserGameProfilesBadRequest {
	return &PublicGetUserGameProfilesBadRequest{}
}

/*PublicGetUserGameProfilesBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12021</td><td>{totalUser} users is requested. Cannot retrieve more than {limitUser} users at once</td></tr></table>
*/
type PublicGetUserGameProfilesBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetUserGameProfilesBadRequest) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/profiles][%d] publicGetUserGameProfilesBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetUserGameProfilesBadRequest) ToJSONString() string {
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

func (o *PublicGetUserGameProfilesBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserGameProfilesBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserGameProfilesUnauthorized creates a PublicGetUserGameProfilesUnauthorized with default headers values
func NewPublicGetUserGameProfilesUnauthorized() *PublicGetUserGameProfilesUnauthorized {
	return &PublicGetUserGameProfilesUnauthorized{}
}

/*PublicGetUserGameProfilesUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicGetUserGameProfilesUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetUserGameProfilesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/profiles][%d] publicGetUserGameProfilesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetUserGameProfilesUnauthorized) ToJSONString() string {
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

func (o *PublicGetUserGameProfilesUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserGameProfilesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserGameProfilesForbidden creates a PublicGetUserGameProfilesForbidden with default headers values
func NewPublicGetUserGameProfilesForbidden() *PublicGetUserGameProfilesForbidden {
	return &PublicGetUserGameProfilesForbidden{}
}

/*PublicGetUserGameProfilesForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicGetUserGameProfilesForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetUserGameProfilesForbidden) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/profiles][%d] publicGetUserGameProfilesForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetUserGameProfilesForbidden) ToJSONString() string {
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

func (o *PublicGetUserGameProfilesForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserGameProfilesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetUserGameProfilesInternalServerError creates a PublicGetUserGameProfilesInternalServerError with default headers values
func NewPublicGetUserGameProfilesInternalServerError() *PublicGetUserGameProfilesInternalServerError {
	return &PublicGetUserGameProfilesInternalServerError{}
}

/*PublicGetUserGameProfilesInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicGetUserGameProfilesInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetUserGameProfilesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/profiles][%d] publicGetUserGameProfilesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetUserGameProfilesInternalServerError) ToJSONString() string {
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

func (o *PublicGetUserGameProfilesInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserGameProfilesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
