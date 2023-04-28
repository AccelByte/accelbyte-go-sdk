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

// ListGlobalAchievementContributorsReader is a Reader for the ListGlobalAchievementContributors structure.
type ListGlobalAchievementContributorsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListGlobalAchievementContributorsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListGlobalAchievementContributorsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListGlobalAchievementContributorsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListGlobalAchievementContributorsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListGlobalAchievementContributorsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /achievement/v1/public/namespaces/{namespace}/global/achievements/{achievementCode}/contributors returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListGlobalAchievementContributorsOK creates a ListGlobalAchievementContributorsOK with default headers values
func NewListGlobalAchievementContributorsOK() *ListGlobalAchievementContributorsOK {
	return &ListGlobalAchievementContributorsOK{}
}

/*ListGlobalAchievementContributorsOK handles this case with default header values.

  OK
*/
type ListGlobalAchievementContributorsOK struct {
	Payload *achievementclientmodels.ModelsPaginatedContributorResponse
}

func (o *ListGlobalAchievementContributorsOK) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/global/achievements/{achievementCode}/contributors][%d] listGlobalAchievementContributorsOK  %+v", 200, o.ToJSONString())
}

func (o *ListGlobalAchievementContributorsOK) ToJSONString() string {
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

func (o *ListGlobalAchievementContributorsOK) GetPayload() *achievementclientmodels.ModelsPaginatedContributorResponse {
	return o.Payload
}

func (o *ListGlobalAchievementContributorsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(achievementclientmodels.ModelsPaginatedContributorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListGlobalAchievementContributorsBadRequest creates a ListGlobalAchievementContributorsBadRequest with default headers values
func NewListGlobalAchievementContributorsBadRequest() *ListGlobalAchievementContributorsBadRequest {
	return &ListGlobalAchievementContributorsBadRequest{}
}

/*ListGlobalAchievementContributorsBadRequest handles this case with default header values.

  Bad Request
*/
type ListGlobalAchievementContributorsBadRequest struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ListGlobalAchievementContributorsBadRequest) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/global/achievements/{achievementCode}/contributors][%d] listGlobalAchievementContributorsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListGlobalAchievementContributorsBadRequest) ToJSONString() string {
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

func (o *ListGlobalAchievementContributorsBadRequest) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ListGlobalAchievementContributorsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListGlobalAchievementContributorsUnauthorized creates a ListGlobalAchievementContributorsUnauthorized with default headers values
func NewListGlobalAchievementContributorsUnauthorized() *ListGlobalAchievementContributorsUnauthorized {
	return &ListGlobalAchievementContributorsUnauthorized{}
}

/*ListGlobalAchievementContributorsUnauthorized handles this case with default header values.

  Unauthorized
*/
type ListGlobalAchievementContributorsUnauthorized struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ListGlobalAchievementContributorsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/global/achievements/{achievementCode}/contributors][%d] listGlobalAchievementContributorsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListGlobalAchievementContributorsUnauthorized) ToJSONString() string {
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

func (o *ListGlobalAchievementContributorsUnauthorized) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ListGlobalAchievementContributorsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewListGlobalAchievementContributorsInternalServerError creates a ListGlobalAchievementContributorsInternalServerError with default headers values
func NewListGlobalAchievementContributorsInternalServerError() *ListGlobalAchievementContributorsInternalServerError {
	return &ListGlobalAchievementContributorsInternalServerError{}
}

/*ListGlobalAchievementContributorsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListGlobalAchievementContributorsInternalServerError struct {
	Payload *achievementclientmodels.ResponseError
}

func (o *ListGlobalAchievementContributorsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /achievement/v1/public/namespaces/{namespace}/global/achievements/{achievementCode}/contributors][%d] listGlobalAchievementContributorsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListGlobalAchievementContributorsInternalServerError) ToJSONString() string {
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

func (o *ListGlobalAchievementContributorsInternalServerError) GetPayload() *achievementclientmodels.ResponseError {
	return o.Payload
}

func (o *ListGlobalAchievementContributorsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
