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

// GetProfileReader is a Reader for the GetProfile structure.
type GetProfileReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetProfileReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetProfileOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetProfileUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetProfileForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetProfileNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetProfileInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/admin/namespaces/{namespace}/users/{userId}/profiles/{profileId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetProfileOK creates a GetProfileOK with default headers values
func NewGetProfileOK() *GetProfileOK {
	return &GetProfileOK{}
}

/*GetProfileOK handles this case with default header values.

  successful operation
*/
type GetProfileOK struct {
	Payload *socialclientmodels.GameProfileInfo
}

func (o *GetProfileOK) Error() string {
	return fmt.Sprintf("[GET /social/admin/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] getProfileOK  %+v", 200, o.ToJSONString())
}

func (o *GetProfileOK) ToJSONString() string {
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

func (o *GetProfileOK) GetPayload() *socialclientmodels.GameProfileInfo {
	return o.Payload
}

func (o *GetProfileOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.GameProfileInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetProfileUnauthorized creates a GetProfileUnauthorized with default headers values
func NewGetProfileUnauthorized() *GetProfileUnauthorized {
	return &GetProfileUnauthorized{}
}

/*GetProfileUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type GetProfileUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetProfileUnauthorized) Error() string {
	return fmt.Sprintf("[GET /social/admin/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] getProfileUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetProfileUnauthorized) ToJSONString() string {
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

func (o *GetProfileUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetProfileUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetProfileForbidden creates a GetProfileForbidden with default headers values
func NewGetProfileForbidden() *GetProfileForbidden {
	return &GetProfileForbidden{}
}

/*GetProfileForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetProfileForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetProfileForbidden) Error() string {
	return fmt.Sprintf("[GET /social/admin/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] getProfileForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetProfileForbidden) ToJSONString() string {
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

func (o *GetProfileForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetProfileForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetProfileNotFound creates a GetProfileNotFound with default headers values
func NewGetProfileNotFound() *GetProfileNotFound {
	return &GetProfileNotFound{}
}

/*GetProfileNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12041</td><td>Game profile with id [{profileId}] is not found</td></tr></table>
*/
type GetProfileNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetProfileNotFound) Error() string {
	return fmt.Sprintf("[GET /social/admin/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] getProfileNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetProfileNotFound) ToJSONString() string {
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

func (o *GetProfileNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetProfileNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetProfileInternalServerError creates a GetProfileInternalServerError with default headers values
func NewGetProfileInternalServerError() *GetProfileInternalServerError {
	return &GetProfileInternalServerError{}
}

/*GetProfileInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type GetProfileInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *GetProfileInternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/admin/namespaces/{namespace}/users/{userId}/profiles/{profileId}][%d] getProfileInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetProfileInternalServerError) ToJSONString() string {
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

func (o *GetProfileInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *GetProfileInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
