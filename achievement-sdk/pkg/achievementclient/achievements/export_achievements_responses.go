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

// ExportAchievementsReader is a Reader for the ExportAchievements structure.
type ExportAchievementsReader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *ExportAchievementsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewExportAchievementsOK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewExportAchievementsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewExportAchievementsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewExportAchievementsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /achievement/v1/admin/namespaces/{namespace}/achievements/export returns an error %d: %s", response.Code(), string(data))
	}
}

// NewExportAchievementsOK creates a ExportAchievementsOK with default headers values
func NewExportAchievementsOK(writer io.Writer) *ExportAchievementsOK {
	return &ExportAchievementsOK{
		Payload: writer,
	}
}

/*ExportAchievementsOK handles this case with default header values.

  OK
*/
type ExportAchievementsOK struct {
	Payload io.Writer
}

func (o *ExportAchievementsOK) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/achievements/export][%d] exportAchievementsOK  %+v", 200, o.ToJSONString())
}

func (o *ExportAchievementsOK) ToJSONString() string {
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

func (o *ExportAchievementsOK) GetPayload() io.Writer {
	return o.Payload
}

func (o *ExportAchievementsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewExportAchievementsUnauthorized creates a ExportAchievementsUnauthorized with default headers values
func NewExportAchievementsUnauthorized() *ExportAchievementsUnauthorized {
	return &ExportAchievementsUnauthorized{}
}

/*ExportAchievementsUnauthorized handles this case with default header values.

  Unauthorized
*/
type ExportAchievementsUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ExportAchievementsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/achievements/export][%d] exportAchievementsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ExportAchievementsUnauthorized) ToJSONString() string {
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

func (o *ExportAchievementsUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ExportAchievementsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewExportAchievementsForbidden creates a ExportAchievementsForbidden with default headers values
func NewExportAchievementsForbidden() *ExportAchievementsForbidden {
	return &ExportAchievementsForbidden{}
}

/*ExportAchievementsForbidden handles this case with default header values.

  Forbidden
*/
type ExportAchievementsForbidden struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ExportAchievementsForbidden) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/achievements/export][%d] exportAchievementsForbidden  %+v", 403, o.ToJSONString())
}

func (o *ExportAchievementsForbidden) ToJSONString() string {
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

func (o *ExportAchievementsForbidden) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ExportAchievementsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewExportAchievementsInternalServerError creates a ExportAchievementsInternalServerError with default headers values
func NewExportAchievementsInternalServerError() *ExportAchievementsInternalServerError {
	return &ExportAchievementsInternalServerError{}
}

/*ExportAchievementsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ExportAchievementsInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ExportAchievementsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/achievements/export][%d] exportAchievementsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ExportAchievementsInternalServerError) ToJSONString() string {
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

func (o *ExportAchievementsInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ExportAchievementsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
