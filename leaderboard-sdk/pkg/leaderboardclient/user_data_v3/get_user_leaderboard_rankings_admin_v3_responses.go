// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_data_v3

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

// GetUserLeaderboardRankingsAdminV3Reader is a Reader for the GetUserLeaderboardRankingsAdminV3 structure.
type GetUserLeaderboardRankingsAdminV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserLeaderboardRankingsAdminV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserLeaderboardRankingsAdminV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserLeaderboardRankingsAdminV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserLeaderboardRankingsAdminV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserLeaderboardRankingsAdminV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/leaderboards returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserLeaderboardRankingsAdminV3OK creates a GetUserLeaderboardRankingsAdminV3OK with default headers values
func NewGetUserLeaderboardRankingsAdminV3OK() *GetUserLeaderboardRankingsAdminV3OK {
	return &GetUserLeaderboardRankingsAdminV3OK{}
}

/*GetUserLeaderboardRankingsAdminV3OK handles this case with default header values.

  User rankings retrieved
*/
type GetUserLeaderboardRankingsAdminV3OK struct {
	Payload *leaderboardclientmodels.ModelsGetAllUserLeaderboardsRespV3
}

func (o *GetUserLeaderboardRankingsAdminV3OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/leaderboards][%d] getUserLeaderboardRankingsAdminV3OK  %+v", 200, o.ToJSONString())
}

func (o *GetUserLeaderboardRankingsAdminV3OK) ToJSONString() string {
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

func (o *GetUserLeaderboardRankingsAdminV3OK) GetPayload() *leaderboardclientmodels.ModelsGetAllUserLeaderboardsRespV3 {
	return o.Payload
}

func (o *GetUserLeaderboardRankingsAdminV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsGetAllUserLeaderboardsRespV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserLeaderboardRankingsAdminV3Unauthorized creates a GetUserLeaderboardRankingsAdminV3Unauthorized with default headers values
func NewGetUserLeaderboardRankingsAdminV3Unauthorized() *GetUserLeaderboardRankingsAdminV3Unauthorized {
	return &GetUserLeaderboardRankingsAdminV3Unauthorized{}
}

/*GetUserLeaderboardRankingsAdminV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserLeaderboardRankingsAdminV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetUserLeaderboardRankingsAdminV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/leaderboards][%d] getUserLeaderboardRankingsAdminV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserLeaderboardRankingsAdminV3Unauthorized) ToJSONString() string {
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

func (o *GetUserLeaderboardRankingsAdminV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserLeaderboardRankingsAdminV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserLeaderboardRankingsAdminV3Forbidden creates a GetUserLeaderboardRankingsAdminV3Forbidden with default headers values
func NewGetUserLeaderboardRankingsAdminV3Forbidden() *GetUserLeaderboardRankingsAdminV3Forbidden {
	return &GetUserLeaderboardRankingsAdminV3Forbidden{}
}

/*GetUserLeaderboardRankingsAdminV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetUserLeaderboardRankingsAdminV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetUserLeaderboardRankingsAdminV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/leaderboards][%d] getUserLeaderboardRankingsAdminV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserLeaderboardRankingsAdminV3Forbidden) ToJSONString() string {
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

func (o *GetUserLeaderboardRankingsAdminV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserLeaderboardRankingsAdminV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserLeaderboardRankingsAdminV3InternalServerError creates a GetUserLeaderboardRankingsAdminV3InternalServerError with default headers values
func NewGetUserLeaderboardRankingsAdminV3InternalServerError() *GetUserLeaderboardRankingsAdminV3InternalServerError {
	return &GetUserLeaderboardRankingsAdminV3InternalServerError{}
}

/*GetUserLeaderboardRankingsAdminV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetUserLeaderboardRankingsAdminV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetUserLeaderboardRankingsAdminV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/users/{userId}/leaderboards][%d] getUserLeaderboardRankingsAdminV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserLeaderboardRankingsAdminV3InternalServerError) ToJSONString() string {
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

func (o *GetUserLeaderboardRankingsAdminV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserLeaderboardRankingsAdminV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
