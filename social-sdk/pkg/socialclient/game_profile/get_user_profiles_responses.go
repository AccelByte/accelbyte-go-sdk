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

// GetUserProfilesReader is a Reader for the GetUserProfiles structure.
type GetUserProfilesReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserProfilesReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserProfilesOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserProfilesUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserProfilesForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserProfilesInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/admin/namespaces/{namespace}/users/{userId}/profiles returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserProfilesOK creates a GetUserProfilesOK with default headers values
func NewGetUserProfilesOK() *GetUserProfilesOK {
	return &GetUserProfilesOK{}
}

/*GetUserProfilesOK handles this case with default header values.

  successful operation
*/
type GetUserProfilesOK struct {
	Payload []*socialclientmodels.GameProfileHeader
}

func (o *GetUserProfilesOK) Error() string {
	return fmt.Sprintf("[GET /social/admin/namespaces/{namespace}/users/{userId}/profiles][%d] getUserProfilesOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserProfilesOK) ToJSONString() string {
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

func (o *GetUserProfilesOK) GetPayload() []*socialclientmodels.GameProfileHeader {
	return o.Payload
}

func (o *GetUserProfilesOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserProfilesUnauthorized creates a GetUserProfilesUnauthorized with default headers values
func NewGetUserProfilesUnauthorized() *GetUserProfilesUnauthorized {
	return &GetUserProfilesUnauthorized{}
}

/*GetUserProfilesUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type GetUserProfilesUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetUserProfilesUnauthorized) Error() string {
	return fmt.Sprintf("[GET /social/admin/namespaces/{namespace}/users/{userId}/profiles][%d] getUserProfilesUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserProfilesUnauthorized) ToJSONString() string {
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

func (o *GetUserProfilesUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserProfilesUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserProfilesForbidden creates a GetUserProfilesForbidden with default headers values
func NewGetUserProfilesForbidden() *GetUserProfilesForbidden {
	return &GetUserProfilesForbidden{}
}

/*GetUserProfilesForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetUserProfilesForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetUserProfilesForbidden) Error() string {
	return fmt.Sprintf("[GET /social/admin/namespaces/{namespace}/users/{userId}/profiles][%d] getUserProfilesForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserProfilesForbidden) ToJSONString() string {
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

func (o *GetUserProfilesForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserProfilesForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserProfilesInternalServerError creates a GetUserProfilesInternalServerError with default headers values
func NewGetUserProfilesInternalServerError() *GetUserProfilesInternalServerError {
	return &GetUserProfilesInternalServerError{}
}

/*GetUserProfilesInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type GetUserProfilesInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetUserProfilesInternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/admin/namespaces/{namespace}/users/{userId}/profiles][%d] getUserProfilesInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserProfilesInternalServerError) ToJSONString() string {
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

func (o *GetUserProfilesInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetUserProfilesInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
