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

// DeleteUserRankingPublicV1Reader is a Reader for the DeleteUserRankingPublicV1 structure.
type DeleteUserRankingPublicV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteUserRankingPublicV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteUserRankingPublicV1NoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteUserRankingPublicV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteUserRankingPublicV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteUserRankingPublicV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteUserRankingPublicV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteUserRankingPublicV1NoContent creates a DeleteUserRankingPublicV1NoContent with default headers values
func NewDeleteUserRankingPublicV1NoContent() *DeleteUserRankingPublicV1NoContent {
	return &DeleteUserRankingPublicV1NoContent{}
}

/*DeleteUserRankingPublicV1NoContent handles this case with default header values.

  User ranking deleted
*/
type DeleteUserRankingPublicV1NoContent struct {
}

func (o *DeleteUserRankingPublicV1NoContent) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}][%d] deleteUserRankingPublicV1NoContent ", 204)
}

func (o *DeleteUserRankingPublicV1NoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteUserRankingPublicV1Unauthorized creates a DeleteUserRankingPublicV1Unauthorized with default headers values
func NewDeleteUserRankingPublicV1Unauthorized() *DeleteUserRankingPublicV1Unauthorized {
	return &DeleteUserRankingPublicV1Unauthorized{}
}

/*DeleteUserRankingPublicV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteUserRankingPublicV1Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingPublicV1Unauthorized) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}][%d] deleteUserRankingPublicV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteUserRankingPublicV1Unauthorized) ToJSONString() string {
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

func (o *DeleteUserRankingPublicV1Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingPublicV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserRankingPublicV1Forbidden creates a DeleteUserRankingPublicV1Forbidden with default headers values
func NewDeleteUserRankingPublicV1Forbidden() *DeleteUserRankingPublicV1Forbidden {
	return &DeleteUserRankingPublicV1Forbidden{}
}

/*DeleteUserRankingPublicV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteUserRankingPublicV1Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingPublicV1Forbidden) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}][%d] deleteUserRankingPublicV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteUserRankingPublicV1Forbidden) ToJSONString() string {
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

func (o *DeleteUserRankingPublicV1Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingPublicV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserRankingPublicV1NotFound creates a DeleteUserRankingPublicV1NotFound with default headers values
func NewDeleteUserRankingPublicV1NotFound() *DeleteUserRankingPublicV1NotFound {
	return &DeleteUserRankingPublicV1NotFound{}
}

/*DeleteUserRankingPublicV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71230</td><td>leaderboard configuration not found</td></tr><tr><td>71233</td><td>user ranking data not found</td></tr></table>
*/
type DeleteUserRankingPublicV1NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingPublicV1NotFound) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}][%d] deleteUserRankingPublicV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteUserRankingPublicV1NotFound) ToJSONString() string {
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

func (o *DeleteUserRankingPublicV1NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingPublicV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewDeleteUserRankingPublicV1InternalServerError creates a DeleteUserRankingPublicV1InternalServerError with default headers values
func NewDeleteUserRankingPublicV1InternalServerError() *DeleteUserRankingPublicV1InternalServerError {
	return &DeleteUserRankingPublicV1InternalServerError{}
}

/*DeleteUserRankingPublicV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type DeleteUserRankingPublicV1InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *DeleteUserRankingPublicV1InternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}][%d] deleteUserRankingPublicV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteUserRankingPublicV1InternalServerError) ToJSONString() string {
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

func (o *DeleteUserRankingPublicV1InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DeleteUserRankingPublicV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
