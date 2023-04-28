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

// AdminListAchievementsReader is a Reader for the AdminListAchievements structure.
type AdminListAchievementsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListAchievementsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListAchievementsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListAchievementsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListAchievementsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminListAchievementsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListAchievementsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /achievement/v1/admin/namespaces/{namespace}/achievements returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListAchievementsOK creates a AdminListAchievementsOK with default headers values
func NewAdminListAchievementsOK() *AdminListAchievementsOK {
	return &AdminListAchievementsOK{}
}

/*AdminListAchievementsOK handles this case with default header values.

  OK
*/
type AdminListAchievementsOK struct {
	Payload *achievementclientmodels.ModelsPaginatedAchievementResponse
}

func (o *AdminListAchievementsOK) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/achievements][%d] adminListAchievementsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListAchievementsOK) ToJSONString() string {
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

func (o *AdminListAchievementsOK) GetPayload() *achievementclientmodels.ModelsPaginatedAchievementResponse {
	return o.Payload
}

func (o *AdminListAchievementsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ModelsPaginatedAchievementResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListAchievementsBadRequest creates a AdminListAchievementsBadRequest with default headers values
func NewAdminListAchievementsBadRequest() *AdminListAchievementsBadRequest {
	return &AdminListAchievementsBadRequest{}
}

/*AdminListAchievementsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminListAchievementsBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListAchievementsBadRequest) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/achievements][%d] adminListAchievementsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListAchievementsBadRequest) ToJSONString() string {
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

func (o *AdminListAchievementsBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListAchievementsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListAchievementsUnauthorized creates a AdminListAchievementsUnauthorized with default headers values
func NewAdminListAchievementsUnauthorized() *AdminListAchievementsUnauthorized {
	return &AdminListAchievementsUnauthorized{}
}

/*AdminListAchievementsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminListAchievementsUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListAchievementsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/achievements][%d] adminListAchievementsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListAchievementsUnauthorized) ToJSONString() string {
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

func (o *AdminListAchievementsUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListAchievementsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListAchievementsNotFound creates a AdminListAchievementsNotFound with default headers values
func NewAdminListAchievementsNotFound() *AdminListAchievementsNotFound {
	return &AdminListAchievementsNotFound{}
}

/*AdminListAchievementsNotFound handles this case with default header values.

  Not Found
*/
type AdminListAchievementsNotFound struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListAchievementsNotFound) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/achievements][%d] adminListAchievementsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminListAchievementsNotFound) ToJSONString() string {
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

func (o *AdminListAchievementsNotFound) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListAchievementsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListAchievementsInternalServerError creates a AdminListAchievementsInternalServerError with default headers values
func NewAdminListAchievementsInternalServerError() *AdminListAchievementsInternalServerError {
	return &AdminListAchievementsInternalServerError{}
}

/*AdminListAchievementsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminListAchievementsInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListAchievementsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/achievements][%d] adminListAchievementsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListAchievementsInternalServerError) ToJSONString() string {
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

func (o *AdminListAchievementsInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListAchievementsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
