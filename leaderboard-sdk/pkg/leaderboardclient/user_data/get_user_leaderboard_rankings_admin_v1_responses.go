// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_data

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

// GetUserLeaderboardRankingsAdminV1Reader is a Reader for the GetUserLeaderboardRankingsAdminV1 structure.
type GetUserLeaderboardRankingsAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserLeaderboardRankingsAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserLeaderboardRankingsAdminV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserLeaderboardRankingsAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserLeaderboardRankingsAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserLeaderboardRankingsAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v1/admin/namespaces/{namespace}/users/{userId}/leaderboards returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserLeaderboardRankingsAdminV1OK creates a GetUserLeaderboardRankingsAdminV1OK with default headers values
func NewGetUserLeaderboardRankingsAdminV1OK() *GetUserLeaderboardRankingsAdminV1OK {
	return &GetUserLeaderboardRankingsAdminV1OK{}
}

/*GetUserLeaderboardRankingsAdminV1OK handles this case with default header values.

  User rankings retrieved
*/
type GetUserLeaderboardRankingsAdminV1OK struct {
	Payload *leaderboardclientmodels.ModelsGetAllUserLeaderboardsResp
}

func (o *GetUserLeaderboardRankingsAdminV1OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/users/{userId}/leaderboards][%d] getUserLeaderboardRankingsAdminV1OK  %+v", 200, o.ToJSONString())
}

func (o *GetUserLeaderboardRankingsAdminV1OK) ToJSONString() string {
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

func (o *GetUserLeaderboardRankingsAdminV1OK) GetPayload() *leaderboardclientmodels.ModelsGetAllUserLeaderboardsResp {
	return o.Payload
}

func (o *GetUserLeaderboardRankingsAdminV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsGetAllUserLeaderboardsResp)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserLeaderboardRankingsAdminV1Unauthorized creates a GetUserLeaderboardRankingsAdminV1Unauthorized with default headers values
func NewGetUserLeaderboardRankingsAdminV1Unauthorized() *GetUserLeaderboardRankingsAdminV1Unauthorized {
	return &GetUserLeaderboardRankingsAdminV1Unauthorized{}
}

/*GetUserLeaderboardRankingsAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserLeaderboardRankingsAdminV1Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetUserLeaderboardRankingsAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/users/{userId}/leaderboards][%d] getUserLeaderboardRankingsAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserLeaderboardRankingsAdminV1Unauthorized) ToJSONString() string {
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

func (o *GetUserLeaderboardRankingsAdminV1Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserLeaderboardRankingsAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserLeaderboardRankingsAdminV1Forbidden creates a GetUserLeaderboardRankingsAdminV1Forbidden with default headers values
func NewGetUserLeaderboardRankingsAdminV1Forbidden() *GetUserLeaderboardRankingsAdminV1Forbidden {
	return &GetUserLeaderboardRankingsAdminV1Forbidden{}
}

/*GetUserLeaderboardRankingsAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetUserLeaderboardRankingsAdminV1Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetUserLeaderboardRankingsAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/users/{userId}/leaderboards][%d] getUserLeaderboardRankingsAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserLeaderboardRankingsAdminV1Forbidden) ToJSONString() string {
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

func (o *GetUserLeaderboardRankingsAdminV1Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserLeaderboardRankingsAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserLeaderboardRankingsAdminV1InternalServerError creates a GetUserLeaderboardRankingsAdminV1InternalServerError with default headers values
func NewGetUserLeaderboardRankingsAdminV1InternalServerError() *GetUserLeaderboardRankingsAdminV1InternalServerError {
	return &GetUserLeaderboardRankingsAdminV1InternalServerError{}
}

/*GetUserLeaderboardRankingsAdminV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetUserLeaderboardRankingsAdminV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetUserLeaderboardRankingsAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/admin/namespaces/{namespace}/users/{userId}/leaderboards][%d] getUserLeaderboardRankingsAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserLeaderboardRankingsAdminV1InternalServerError) ToJSONString() string {
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

func (o *GetUserLeaderboardRankingsAdminV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserLeaderboardRankingsAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
