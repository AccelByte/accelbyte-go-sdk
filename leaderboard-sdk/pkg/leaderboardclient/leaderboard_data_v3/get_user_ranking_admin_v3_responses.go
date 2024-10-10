// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_data_v3

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

// GetUserRankingAdminV3Reader is a Reader for the GetUserRankingAdminV3 structure.
type GetUserRankingAdminV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserRankingAdminV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserRankingAdminV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserRankingAdminV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserRankingAdminV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserRankingAdminV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserRankingAdminV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserRankingAdminV3OK creates a GetUserRankingAdminV3OK with default headers values
func NewGetUserRankingAdminV3OK() *GetUserRankingAdminV3OK {
	return &GetUserRankingAdminV3OK{}
}

/*GetUserRankingAdminV3OK handles this case with default header values.

  User ranking retrieved
*/
type GetUserRankingAdminV3OK struct {
	Payload *leaderboardclientmodels.ModelsUserRankingResponseV3
}

func (o *GetUserRankingAdminV3OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}][%d] getUserRankingAdminV3OK  %+v", 200, o.ToJSONString())
}

func (o *GetUserRankingAdminV3OK) ToJSONString() string {
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

func (o *GetUserRankingAdminV3OK) GetPayload() *leaderboardclientmodels.ModelsUserRankingResponseV3 {
	return o.Payload
}

func (o *GetUserRankingAdminV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsUserRankingResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetUserRankingAdminV3Unauthorized creates a GetUserRankingAdminV3Unauthorized with default headers values
func NewGetUserRankingAdminV3Unauthorized() *GetUserRankingAdminV3Unauthorized {
	return &GetUserRankingAdminV3Unauthorized{}
}

/*GetUserRankingAdminV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetUserRankingAdminV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetUserRankingAdminV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}][%d] getUserRankingAdminV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetUserRankingAdminV3Unauthorized) ToJSONString() string {
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

func (o *GetUserRankingAdminV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserRankingAdminV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserRankingAdminV3Forbidden creates a GetUserRankingAdminV3Forbidden with default headers values
func NewGetUserRankingAdminV3Forbidden() *GetUserRankingAdminV3Forbidden {
	return &GetUserRankingAdminV3Forbidden{}
}

/*GetUserRankingAdminV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetUserRankingAdminV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetUserRankingAdminV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}][%d] getUserRankingAdminV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetUserRankingAdminV3Forbidden) ToJSONString() string {
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

func (o *GetUserRankingAdminV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserRankingAdminV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserRankingAdminV3NotFound creates a GetUserRankingAdminV3NotFound with default headers values
func NewGetUserRankingAdminV3NotFound() *GetUserRankingAdminV3NotFound {
	return &GetUserRankingAdminV3NotFound{}
}

/*GetUserRankingAdminV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71230</td><td>leaderboard configuration not found</td></tr><tr><td>71233</td><td>user ranking data not found</td></tr></table>
*/
type GetUserRankingAdminV3NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetUserRankingAdminV3NotFound) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}][%d] getUserRankingAdminV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetUserRankingAdminV3NotFound) ToJSONString() string {
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

func (o *GetUserRankingAdminV3NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserRankingAdminV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewGetUserRankingAdminV3InternalServerError creates a GetUserRankingAdminV3InternalServerError with default headers values
func NewGetUserRankingAdminV3InternalServerError() *GetUserRankingAdminV3InternalServerError {
	return &GetUserRankingAdminV3InternalServerError{}
}

/*GetUserRankingAdminV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetUserRankingAdminV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetUserRankingAdminV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/admin/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/{userId}][%d] getUserRankingAdminV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetUserRankingAdminV3InternalServerError) ToJSONString() string {
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

func (o *GetUserRankingAdminV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetUserRankingAdminV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
