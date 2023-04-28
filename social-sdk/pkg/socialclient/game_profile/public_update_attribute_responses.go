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

// PublicUpdateAttributeReader is a Reader for the PublicUpdateAttribute structure.
type PublicUpdateAttributeReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicUpdateAttributeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicUpdateAttributeOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicUpdateAttributeBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicUpdateAttributeNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicUpdateAttributeOK creates a PublicUpdateAttributeOK with default headers values
func NewPublicUpdateAttributeOK() *PublicUpdateAttributeOK {
	return &PublicUpdateAttributeOK{}
}

/*PublicUpdateAttributeOK handles this case with default header values.

  successful operation
*/
type PublicUpdateAttributeOK struct {
	Payload *socialclientmodels.GameProfileInfo
}

func (o *PublicUpdateAttributeOK) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}][%d] publicUpdateAttributeOK  %+v", 200, o.ToJSONString())
}

func (o *PublicUpdateAttributeOK) ToJSONString() string {
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

func (o *PublicUpdateAttributeOK) GetPayload() *socialclientmodels.GameProfileInfo {
	return o.Payload
}

func (o *PublicUpdateAttributeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateAttributeBadRequest creates a PublicUpdateAttributeBadRequest with default headers values
func NewPublicUpdateAttributeBadRequest() *PublicUpdateAttributeBadRequest {
	return &PublicUpdateAttributeBadRequest{}
}

/*PublicUpdateAttributeBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12022</td><td>Game profile attribute name [{attrName1}] passed in request url mismatch the name [{attrName2}] in body</td></tr></table>
*/
type PublicUpdateAttributeBadRequest struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicUpdateAttributeBadRequest) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}][%d] publicUpdateAttributeBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicUpdateAttributeBadRequest) ToJSONString() string {
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

func (o *PublicUpdateAttributeBadRequest) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateAttributeBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicUpdateAttributeNotFound creates a PublicUpdateAttributeNotFound with default headers values
func NewPublicUpdateAttributeNotFound() *PublicUpdateAttributeNotFound {
	return &PublicUpdateAttributeNotFound{}
}

/*PublicUpdateAttributeNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>12041</td><td>Game profile with id [{profileId}] is not found</td></tr></table>
*/
type PublicUpdateAttributeNotFound struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *PublicUpdateAttributeNotFound) Error() string {
	return fmt.Sprintf("[PUT /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName}][%d] publicUpdateAttributeNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicUpdateAttributeNotFound) ToJSONString() string {
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

func (o *PublicUpdateAttributeNotFound) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicUpdateAttributeNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
