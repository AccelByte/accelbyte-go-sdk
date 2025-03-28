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

// PublicListAchievementsReader is a Reader for the PublicListAchievements structure.
type PublicListAchievementsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicListAchievementsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicListAchievementsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicListAchievementsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicListAchievementsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicListAchievementsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicListAchievementsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /achievement/v1/public/namespaces/{namespace}/achievements returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicListAchievementsOK creates a PublicListAchievementsOK with default headers values
func NewPublicListAchievementsOK() *PublicListAchievementsOK {
	return &PublicListAchievementsOK{}
}

/*PublicListAchievementsOK handles this case with default header values.

  OK
*/
type PublicListAchievementsOK struct {
	Payload *achievementclientmodels.ModelsPublicAchievementsResponse
}

func (o *PublicListAchievementsOK) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/achievements][%d] publicListAchievementsOK  %+v", 200, o.ToJSONString())
}

func (o *PublicListAchievementsOK) ToJSONString() string {
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

func (o *PublicListAchievementsOK) GetPayload() *achievementclientmodels.ModelsPublicAchievementsResponse {
	return o.Payload
}

func (o *PublicListAchievementsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ModelsPublicAchievementsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicListAchievementsBadRequest creates a PublicListAchievementsBadRequest with default headers values
func NewPublicListAchievementsBadRequest() *PublicListAchievementsBadRequest {
	return &PublicListAchievementsBadRequest{}
}

/*PublicListAchievementsBadRequest handles this case with default header values.

  Bad Request
*/
type PublicListAchievementsBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicListAchievementsBadRequest) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/achievements][%d] publicListAchievementsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicListAchievementsBadRequest) ToJSONString() string {
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

func (o *PublicListAchievementsBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListAchievementsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListAchievementsUnauthorized creates a PublicListAchievementsUnauthorized with default headers values
func NewPublicListAchievementsUnauthorized() *PublicListAchievementsUnauthorized {
	return &PublicListAchievementsUnauthorized{}
}

/*PublicListAchievementsUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicListAchievementsUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicListAchievementsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/achievements][%d] publicListAchievementsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicListAchievementsUnauthorized) ToJSONString() string {
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

func (o *PublicListAchievementsUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListAchievementsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListAchievementsNotFound creates a PublicListAchievementsNotFound with default headers values
func NewPublicListAchievementsNotFound() *PublicListAchievementsNotFound {
	return &PublicListAchievementsNotFound{}
}

/*PublicListAchievementsNotFound handles this case with default header values.

  Not Found
*/
type PublicListAchievementsNotFound struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicListAchievementsNotFound) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/achievements][%d] publicListAchievementsNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicListAchievementsNotFound) ToJSONString() string {
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

func (o *PublicListAchievementsNotFound) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListAchievementsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicListAchievementsInternalServerError creates a PublicListAchievementsInternalServerError with default headers values
func NewPublicListAchievementsInternalServerError() *PublicListAchievementsInternalServerError {
	return &PublicListAchievementsInternalServerError{}
}

/*PublicListAchievementsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicListAchievementsInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *PublicListAchievementsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/achievements][%d] publicListAchievementsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicListAchievementsInternalServerError) ToJSONString() string {
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

func (o *PublicListAchievementsInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicListAchievementsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
