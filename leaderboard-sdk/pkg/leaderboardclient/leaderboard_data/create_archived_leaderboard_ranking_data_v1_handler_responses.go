// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_data

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
)

// CreateArchivedLeaderboardRankingDataV1HandlerReader is a Reader for the CreateArchivedLeaderboardRankingDataV1Handler structure.
type CreateArchivedLeaderboardRankingDataV1HandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateArchivedLeaderboardRankingDataV1HandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateArchivedLeaderboardRankingDataV1HandlerCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateArchivedLeaderboardRankingDataV1HandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewCreateArchivedLeaderboardRankingDataV1HandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewCreateArchivedLeaderboardRankingDataV1HandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewCreateArchivedLeaderboardRankingDataV1HandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateArchivedLeaderboardRankingDataV1HandlerCreated creates a CreateArchivedLeaderboardRankingDataV1HandlerCreated with default headers values
func NewCreateArchivedLeaderboardRankingDataV1HandlerCreated() *CreateArchivedLeaderboardRankingDataV1HandlerCreated {
	return &CreateArchivedLeaderboardRankingDataV1HandlerCreated{}
}

/*CreateArchivedLeaderboardRankingDataV1HandlerCreated handles this case with default header values.

  leaderboard data ranking archived
*/
type CreateArchivedLeaderboardRankingDataV1HandlerCreated struct {
}

func (o *CreateArchivedLeaderboardRankingDataV1HandlerCreated) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived][%d] createArchivedLeaderboardRankingDataV1HandlerCreated ", 201)
}

func (o *CreateArchivedLeaderboardRankingDataV1HandlerCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCreateArchivedLeaderboardRankingDataV1HandlerBadRequest creates a CreateArchivedLeaderboardRankingDataV1HandlerBadRequest with default headers values
func NewCreateArchivedLeaderboardRankingDataV1HandlerBadRequest() *CreateArchivedLeaderboardRankingDataV1HandlerBadRequest {
	return &CreateArchivedLeaderboardRankingDataV1HandlerBadRequest{}
}

/*CreateArchivedLeaderboardRankingDataV1HandlerBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr></table>
*/
type CreateArchivedLeaderboardRankingDataV1HandlerBadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateArchivedLeaderboardRankingDataV1HandlerBadRequest) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived][%d] createArchivedLeaderboardRankingDataV1HandlerBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateArchivedLeaderboardRankingDataV1HandlerBadRequest) ToJSONString() string {
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

func (o *CreateArchivedLeaderboardRankingDataV1HandlerBadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateArchivedLeaderboardRankingDataV1HandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateArchivedLeaderboardRankingDataV1HandlerUnauthorized creates a CreateArchivedLeaderboardRankingDataV1HandlerUnauthorized with default headers values
func NewCreateArchivedLeaderboardRankingDataV1HandlerUnauthorized() *CreateArchivedLeaderboardRankingDataV1HandlerUnauthorized {
	return &CreateArchivedLeaderboardRankingDataV1HandlerUnauthorized{}
}

/*CreateArchivedLeaderboardRankingDataV1HandlerUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type CreateArchivedLeaderboardRankingDataV1HandlerUnauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateArchivedLeaderboardRankingDataV1HandlerUnauthorized) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived][%d] createArchivedLeaderboardRankingDataV1HandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *CreateArchivedLeaderboardRankingDataV1HandlerUnauthorized) ToJSONString() string {
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

func (o *CreateArchivedLeaderboardRankingDataV1HandlerUnauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateArchivedLeaderboardRankingDataV1HandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateArchivedLeaderboardRankingDataV1HandlerForbidden creates a CreateArchivedLeaderboardRankingDataV1HandlerForbidden with default headers values
func NewCreateArchivedLeaderboardRankingDataV1HandlerForbidden() *CreateArchivedLeaderboardRankingDataV1HandlerForbidden {
	return &CreateArchivedLeaderboardRankingDataV1HandlerForbidden{}
}

/*CreateArchivedLeaderboardRankingDataV1HandlerForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type CreateArchivedLeaderboardRankingDataV1HandlerForbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateArchivedLeaderboardRankingDataV1HandlerForbidden) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived][%d] createArchivedLeaderboardRankingDataV1HandlerForbidden  %+v", 403, o.ToJSONString())
}

func (o *CreateArchivedLeaderboardRankingDataV1HandlerForbidden) ToJSONString() string {
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

func (o *CreateArchivedLeaderboardRankingDataV1HandlerForbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateArchivedLeaderboardRankingDataV1HandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCreateArchivedLeaderboardRankingDataV1HandlerInternalServerError creates a CreateArchivedLeaderboardRankingDataV1HandlerInternalServerError with default headers values
func NewCreateArchivedLeaderboardRankingDataV1HandlerInternalServerError() *CreateArchivedLeaderboardRankingDataV1HandlerInternalServerError {
	return &CreateArchivedLeaderboardRankingDataV1HandlerInternalServerError{}
}

/*CreateArchivedLeaderboardRankingDataV1HandlerInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type CreateArchivedLeaderboardRankingDataV1HandlerInternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *CreateArchivedLeaderboardRankingDataV1HandlerInternalServerError) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/archived][%d] createArchivedLeaderboardRankingDataV1HandlerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *CreateArchivedLeaderboardRankingDataV1HandlerInternalServerError) ToJSONString() string {
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

func (o *CreateArchivedLeaderboardRankingDataV1HandlerInternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *CreateArchivedLeaderboardRankingDataV1HandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
