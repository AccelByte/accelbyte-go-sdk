// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package achievements

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclientmodels"
)

// PublicGetAchievementReader is a Reader for the PublicGetAchievement structure.
type PublicGetAchievementReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetAchievementReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetAchievementOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetAchievementBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetAchievementUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetAchievementNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetAchievementInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /achievement/v1/public/namespaces/{namespace}/achievements/{achievementCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetAchievementOK creates a PublicGetAchievementOK with default headers values
func NewPublicGetAchievementOK() *PublicGetAchievementOK {
	return &PublicGetAchievementOK{}
}

/*PublicGetAchievementOK handles this case with default header values.

  OK
*/
type PublicGetAchievementOK struct {
	Payload *achievementclientmodels.ModelsPublicAchievementResponse
}

func (o *PublicGetAchievementOK) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/achievements/{achievementCode}][%d] publicGetAchievementOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetAchievementOK) ToJSONString() string {
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

func (o *PublicGetAchievementOK) GetPayload() *achievementclientmodels.ModelsPublicAchievementResponse {
	return o.Payload
}

func (o *PublicGetAchievementOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ModelsPublicAchievementResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetAchievementBadRequest creates a PublicGetAchievementBadRequest with default headers values
func NewPublicGetAchievementBadRequest() *PublicGetAchievementBadRequest {
	return &PublicGetAchievementBadRequest{}
}

/*PublicGetAchievementBadRequest handles this case with default header values.

  Bad Request
*/
type PublicGetAchievementBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicGetAchievementBadRequest) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/achievements/{achievementCode}][%d] publicGetAchievementBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetAchievementBadRequest) ToJSONString() string {
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

func (o *PublicGetAchievementBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetAchievementBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetAchievementUnauthorized creates a PublicGetAchievementUnauthorized with default headers values
func NewPublicGetAchievementUnauthorized() *PublicGetAchievementUnauthorized {
	return &PublicGetAchievementUnauthorized{}
}

/*PublicGetAchievementUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetAchievementUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicGetAchievementUnauthorized) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/achievements/{achievementCode}][%d] publicGetAchievementUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetAchievementUnauthorized) ToJSONString() string {
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

func (o *PublicGetAchievementUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetAchievementUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetAchievementNotFound creates a PublicGetAchievementNotFound with default headers values
func NewPublicGetAchievementNotFound() *PublicGetAchievementNotFound {
	return &PublicGetAchievementNotFound{}
}

/*PublicGetAchievementNotFound handles this case with default header values.

  Not Found
*/
type PublicGetAchievementNotFound struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicGetAchievementNotFound) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/achievements/{achievementCode}][%d] publicGetAchievementNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetAchievementNotFound) ToJSONString() string {
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

func (o *PublicGetAchievementNotFound) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetAchievementNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetAchievementInternalServerError creates a PublicGetAchievementInternalServerError with default headers values
func NewPublicGetAchievementInternalServerError() *PublicGetAchievementInternalServerError {
	return &PublicGetAchievementInternalServerError{}
}

/*PublicGetAchievementInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetAchievementInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicGetAchievementInternalServerError) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/achievements/{achievementCode}][%d] publicGetAchievementInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetAchievementInternalServerError) ToJSONString() string {
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

func (o *PublicGetAchievementInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetAchievementInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
