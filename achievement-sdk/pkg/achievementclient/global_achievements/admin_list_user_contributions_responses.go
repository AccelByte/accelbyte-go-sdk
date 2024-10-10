// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package global_achievements

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

// AdminListUserContributionsReader is a Reader for the AdminListUserContributions structure.
type AdminListUserContributionsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListUserContributionsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListUserContributionsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListUserContributionsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListUserContributionsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListUserContributionsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /achievement/v1/admin/namespaces/{namespace}/users/{userId}/global/achievements returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListUserContributionsOK creates a AdminListUserContributionsOK with default headers values
func NewAdminListUserContributionsOK() *AdminListUserContributionsOK {
	return &AdminListUserContributionsOK{}
}

/*AdminListUserContributionsOK handles this case with default header values.

  OK
*/
type AdminListUserContributionsOK struct {
	Payload *achievementclientmodels.ModelsPaginatedUserContributionResponse
}

func (o *AdminListUserContributionsOK) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/users/{userId}/global/achievements][%d] adminListUserContributionsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListUserContributionsOK) ToJSONString() string {
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

func (o *AdminListUserContributionsOK) GetPayload() *achievementclientmodels.ModelsPaginatedUserContributionResponse {
	return o.Payload
}

func (o *AdminListUserContributionsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ModelsPaginatedUserContributionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListUserContributionsBadRequest creates a AdminListUserContributionsBadRequest with default headers values
func NewAdminListUserContributionsBadRequest() *AdminListUserContributionsBadRequest {
	return &AdminListUserContributionsBadRequest{}
}

/*AdminListUserContributionsBadRequest handles this case with default header values.

  Bad Request
*/
type AdminListUserContributionsBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListUserContributionsBadRequest) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/users/{userId}/global/achievements][%d] adminListUserContributionsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListUserContributionsBadRequest) ToJSONString() string {
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

func (o *AdminListUserContributionsBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListUserContributionsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserContributionsUnauthorized creates a AdminListUserContributionsUnauthorized with default headers values
func NewAdminListUserContributionsUnauthorized() *AdminListUserContributionsUnauthorized {
	return &AdminListUserContributionsUnauthorized{}
}

/*AdminListUserContributionsUnauthorized handles this case with default header values.

  Unauthorized
*/
type AdminListUserContributionsUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListUserContributionsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/users/{userId}/global/achievements][%d] adminListUserContributionsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListUserContributionsUnauthorized) ToJSONString() string {
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

func (o *AdminListUserContributionsUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListUserContributionsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminListUserContributionsInternalServerError creates a AdminListUserContributionsInternalServerError with default headers values
func NewAdminListUserContributionsInternalServerError() *AdminListUserContributionsInternalServerError {
	return &AdminListUserContributionsInternalServerError{}
}

/*AdminListUserContributionsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminListUserContributionsInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *AdminListUserContributionsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/admin/namespaces/{namespace}/users/{userId}/global/achievements][%d] adminListUserContributionsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListUserContributionsInternalServerError) ToJSONString() string {
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

func (o *AdminListUserContributionsInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminListUserContributionsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
