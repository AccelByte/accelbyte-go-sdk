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

// DeleteUserRankingByLeaderboardCodeAdminV1Reader is a Reader for the DeleteUserRankingByLeaderboardCodeAdminV1 structure.
type DeleteUserRankingByLeaderboardCodeAdminV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserRankingByLeaderboardCodeAdminV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteUserRankingByLeaderboardCodeAdminV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteUserRankingByLeaderboardCodeAdminV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteUserRankingByLeaderboardCodeAdminV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteUserRankingByLeaderboardCodeAdminV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteUserRankingByLeaderboardCodeAdminV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserRankingByLeaderboardCodeAdminV1NoContent creates a DeleteUserRankingByLeaderboardCodeAdminV1NoContent with default headers values
func NewDeleteUserRankingByLeaderboardCodeAdminV1NoContent() *DeleteUserRankingByLeaderboardCodeAdminV1NoContent {
	return &DeleteUserRankingByLeaderboardCodeAdminV1NoContent{}
}

/*DeleteUserRankingByLeaderboardCodeAdminV1NoContent handles this case with default header values.

  Leaderboard deleted
*/
type DeleteUserRankingByLeaderboardCodeAdminV1NoContent struct {
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset][%d] deleteUserRankingByLeaderboardCodeAdminV1NoContent ", 204)
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserRankingByLeaderboardCodeAdminV1Unauthorized creates a DeleteUserRankingByLeaderboardCodeAdminV1Unauthorized with default headers values
func NewDeleteUserRankingByLeaderboardCodeAdminV1Unauthorized() *DeleteUserRankingByLeaderboardCodeAdminV1Unauthorized {
	return &DeleteUserRankingByLeaderboardCodeAdminV1Unauthorized{}
}

/*DeleteUserRankingByLeaderboardCodeAdminV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteUserRankingByLeaderboardCodeAdminV1Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset][%d] deleteUserRankingByLeaderboardCodeAdminV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV1Unauthorized) ToJSONString() string {
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

func (o *DeleteUserRankingByLeaderboardCodeAdminV1Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteUserRankingByLeaderboardCodeAdminV1Forbidden creates a DeleteUserRankingByLeaderboardCodeAdminV1Forbidden with default headers values
func NewDeleteUserRankingByLeaderboardCodeAdminV1Forbidden() *DeleteUserRankingByLeaderboardCodeAdminV1Forbidden {
	return &DeleteUserRankingByLeaderboardCodeAdminV1Forbidden{}
}

/*DeleteUserRankingByLeaderboardCodeAdminV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr><tr><td>71241</td><td>forbidden environment</td></tr></table>
*/
type DeleteUserRankingByLeaderboardCodeAdminV1Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset][%d] deleteUserRankingByLeaderboardCodeAdminV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV1Forbidden) ToJSONString() string {
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

func (o *DeleteUserRankingByLeaderboardCodeAdminV1Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteUserRankingByLeaderboardCodeAdminV1NotFound creates a DeleteUserRankingByLeaderboardCodeAdminV1NotFound with default headers values
func NewDeleteUserRankingByLeaderboardCodeAdminV1NotFound() *DeleteUserRankingByLeaderboardCodeAdminV1NotFound {
	return &DeleteUserRankingByLeaderboardCodeAdminV1NotFound{}
}

/*DeleteUserRankingByLeaderboardCodeAdminV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71130</td><td>leaderboard config not found</td></tr></table>
*/
type DeleteUserRankingByLeaderboardCodeAdminV1NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset][%d] deleteUserRankingByLeaderboardCodeAdminV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV1NotFound) ToJSONString() string {
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

func (o *DeleteUserRankingByLeaderboardCodeAdminV1NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewDeleteUserRankingByLeaderboardCodeAdminV1InternalServerError creates a DeleteUserRankingByLeaderboardCodeAdminV1InternalServerError with default headers values
func NewDeleteUserRankingByLeaderboardCodeAdminV1InternalServerError() *DeleteUserRankingByLeaderboardCodeAdminV1InternalServerError {
	return &DeleteUserRankingByLeaderboardCodeAdminV1InternalServerError{}
}

/*DeleteUserRankingByLeaderboardCodeAdminV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type DeleteUserRankingByLeaderboardCodeAdminV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/reset][%d] deleteUserRankingByLeaderboardCodeAdminV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV1InternalServerError) ToJSONString() string {
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

func (o *DeleteUserRankingByLeaderboardCodeAdminV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingByLeaderboardCodeAdminV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
