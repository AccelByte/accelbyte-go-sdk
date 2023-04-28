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

// ImportAchievementsReader is a Reader for the ImportAchievements structure.
type ImportAchievementsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ImportAchievementsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewImportAchievementsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewImportAchievementsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewImportAchievementsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 429:
		result := NewImportAchievementsTooManyRequests()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewImportAchievementsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /achievement/v1/admin/namespaces/{namespace}/achievements/import returns an error %d: %s", response.Code(), string(data))
	}
}

// NewImportAchievementsOK creates a ImportAchievementsOK with default headers values
func NewImportAchievementsOK() *ImportAchievementsOK {
	return &ImportAchievementsOK{}
}

/*ImportAchievementsOK handles this case with default header values.

  OK
*/
type ImportAchievementsOK struct {
	Payload *achievementclientmodels.ServiceImportConfigResponse
}

func (o *ImportAchievementsOK) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/achievements/import][%d] importAchievementsOK  %+v", 200, o.ToJSONString())
}

func (o *ImportAchievementsOK) ToJSONString() string {
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

func (o *ImportAchievementsOK) GetPayload() *achievementclientmodels.ServiceImportConfigResponse {
	return o.Payload
}

func (o *ImportAchievementsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ServiceImportConfigResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewImportAchievementsUnauthorized creates a ImportAchievementsUnauthorized with default headers values
func NewImportAchievementsUnauthorized() *ImportAchievementsUnauthorized {
	return &ImportAchievementsUnauthorized{}
}

/*ImportAchievementsUnauthorized handles this case with default header values.

  Unauthorized
*/
type ImportAchievementsUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ImportAchievementsUnauthorized) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/achievements/import][%d] importAchievementsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ImportAchievementsUnauthorized) ToJSONString() string {
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

func (o *ImportAchievementsUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportAchievementsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImportAchievementsForbidden creates a ImportAchievementsForbidden with default headers values
func NewImportAchievementsForbidden() *ImportAchievementsForbidden {
	return &ImportAchievementsForbidden{}
}

/*ImportAchievementsForbidden handles this case with default header values.

  Forbidden
*/
type ImportAchievementsForbidden struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ImportAchievementsForbidden) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/achievements/import][%d] importAchievementsForbidden  %+v", 403, o.ToJSONString())
}

func (o *ImportAchievementsForbidden) ToJSONString() string {
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

func (o *ImportAchievementsForbidden) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportAchievementsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImportAchievementsTooManyRequests creates a ImportAchievementsTooManyRequests with default headers values
func NewImportAchievementsTooManyRequests() *ImportAchievementsTooManyRequests {
	return &ImportAchievementsTooManyRequests{}
}

/*ImportAchievementsTooManyRequests handles this case with default header values.

  Too Many Requests
*/
type ImportAchievementsTooManyRequests struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ImportAchievementsTooManyRequests) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/achievements/import][%d] importAchievementsTooManyRequests  %+v", 429, o.ToJSONString())
}

func (o *ImportAchievementsTooManyRequests) ToJSONString() string {
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

func (o *ImportAchievementsTooManyRequests) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportAchievementsTooManyRequests) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewImportAchievementsInternalServerError creates a ImportAchievementsInternalServerError with default headers values
func NewImportAchievementsInternalServerError() *ImportAchievementsInternalServerError {
	return &ImportAchievementsInternalServerError{}
}

/*ImportAchievementsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ImportAchievementsInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ImportAchievementsInternalServerError) Error() string {
	return fmt.Sprintf("[POST /achievement/v1/admin/namespaces/{namespace}/achievements/import][%d] importAchievementsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ImportAchievementsInternalServerError) ToJSONString() string {
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

func (o *ImportAchievementsInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ImportAchievementsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
