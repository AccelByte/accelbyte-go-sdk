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

// PublicGetUserProfilesReader is a Reader for the PublicGetUserProfiles structure.
type PublicGetUserProfilesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetUserProfilesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetUserProfilesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetUserProfilesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetUserProfilesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetUserProfilesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/public/namespaces/{namespace}/users/{userId}/profiles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetUserProfilesOK creates a PublicGetUserProfilesOK with default headers values
func NewPublicGetUserProfilesOK() *PublicGetUserProfilesOK {
	return &PublicGetUserProfilesOK{}
}

/*PublicGetUserProfilesOK handles this case with default header values.

  successful operation
*/
type PublicGetUserProfilesOK struct {
	Payload []*socialclientmodels.GameProfileHeader
}

func (o *PublicGetUserProfilesOK) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicGetUserProfilesOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetUserProfilesOK) ToJSONString() string {
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

func (o *PublicGetUserProfilesOK) GetPayload() []*socialclientmodels.GameProfileHeader {
	return o.Payload
}

func (o *PublicGetUserProfilesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUserProfilesUnauthorized creates a PublicGetUserProfilesUnauthorized with default headers values
func NewPublicGetUserProfilesUnauthorized() *PublicGetUserProfilesUnauthorized {
	return &PublicGetUserProfilesUnauthorized{}
}

/*PublicGetUserProfilesUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type PublicGetUserProfilesUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetUserProfilesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicGetUserProfilesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetUserProfilesUnauthorized) ToJSONString() string {
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

func (o *PublicGetUserProfilesUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserProfilesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUserProfilesForbidden creates a PublicGetUserProfilesForbidden with default headers values
func NewPublicGetUserProfilesForbidden() *PublicGetUserProfilesForbidden {
	return &PublicGetUserProfilesForbidden{}
}

/*PublicGetUserProfilesForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PublicGetUserProfilesForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetUserProfilesForbidden) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicGetUserProfilesForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetUserProfilesForbidden) ToJSONString() string {
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

func (o *PublicGetUserProfilesForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserProfilesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetUserProfilesInternalServerError creates a PublicGetUserProfilesInternalServerError with default headers values
func NewPublicGetUserProfilesInternalServerError() *PublicGetUserProfilesInternalServerError {
	return &PublicGetUserProfilesInternalServerError{}
}

/*PublicGetUserProfilesInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type PublicGetUserProfilesInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicGetUserProfilesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/public/namespaces/{namespace}/users/{userId}/profiles][%d] publicGetUserProfilesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetUserProfilesInternalServerError) ToJSONString() string {
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

func (o *PublicGetUserProfilesInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicGetUserProfilesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
