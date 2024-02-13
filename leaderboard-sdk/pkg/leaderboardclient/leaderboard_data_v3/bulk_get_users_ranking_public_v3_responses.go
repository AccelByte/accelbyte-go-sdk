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

// BulkGetUsersRankingPublicV3Reader is a Reader for the BulkGetUsersRankingPublicV3 structure.
type BulkGetUsersRankingPublicV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkGetUsersRankingPublicV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkGetUsersRankingPublicV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkGetUsersRankingPublicV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkGetUsersRankingPublicV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkGetUsersRankingPublicV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewBulkGetUsersRankingPublicV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkGetUsersRankingPublicV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkGetUsersRankingPublicV3OK creates a BulkGetUsersRankingPublicV3OK with default headers values
func NewBulkGetUsersRankingPublicV3OK() *BulkGetUsersRankingPublicV3OK {
	return &BulkGetUsersRankingPublicV3OK{}
}

/*BulkGetUsersRankingPublicV3OK handles this case with default header values.

  Users ranking retrieved
*/
type BulkGetUsersRankingPublicV3OK struct {
	Payload *leaderboardclientmodels.ModelsBulkUserRankingResponseV3
}

func (o *BulkGetUsersRankingPublicV3OK) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/bulk][%d] bulkGetUsersRankingPublicV3OK  %+v", 200, o.ToJSONString())
}

func (o *BulkGetUsersRankingPublicV3OK) ToJSONString() string {
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

func (o *BulkGetUsersRankingPublicV3OK) GetPayload() *leaderboardclientmodels.ModelsBulkUserRankingResponseV3 {
	return o.Payload
}

func (o *BulkGetUsersRankingPublicV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsBulkUserRankingResponseV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetUsersRankingPublicV3BadRequest creates a BulkGetUsersRankingPublicV3BadRequest with default headers values
func NewBulkGetUsersRankingPublicV3BadRequest() *BulkGetUsersRankingPublicV3BadRequest {
	return &BulkGetUsersRankingPublicV3BadRequest{}
}

/*BulkGetUsersRankingPublicV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20019</td><td>unable to parse request body</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type BulkGetUsersRankingPublicV3BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *BulkGetUsersRankingPublicV3BadRequest) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/bulk][%d] bulkGetUsersRankingPublicV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkGetUsersRankingPublicV3BadRequest) ToJSONString() string {
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

func (o *BulkGetUsersRankingPublicV3BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *BulkGetUsersRankingPublicV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkGetUsersRankingPublicV3Unauthorized creates a BulkGetUsersRankingPublicV3Unauthorized with default headers values
func NewBulkGetUsersRankingPublicV3Unauthorized() *BulkGetUsersRankingPublicV3Unauthorized {
	return &BulkGetUsersRankingPublicV3Unauthorized{}
}

/*BulkGetUsersRankingPublicV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type BulkGetUsersRankingPublicV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *BulkGetUsersRankingPublicV3Unauthorized) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/bulk][%d] bulkGetUsersRankingPublicV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkGetUsersRankingPublicV3Unauthorized) ToJSONString() string {
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

func (o *BulkGetUsersRankingPublicV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *BulkGetUsersRankingPublicV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkGetUsersRankingPublicV3Forbidden creates a BulkGetUsersRankingPublicV3Forbidden with default headers values
func NewBulkGetUsersRankingPublicV3Forbidden() *BulkGetUsersRankingPublicV3Forbidden {
	return &BulkGetUsersRankingPublicV3Forbidden{}
}

/*BulkGetUsersRankingPublicV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type BulkGetUsersRankingPublicV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *BulkGetUsersRankingPublicV3Forbidden) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/bulk][%d] bulkGetUsersRankingPublicV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkGetUsersRankingPublicV3Forbidden) ToJSONString() string {
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

func (o *BulkGetUsersRankingPublicV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *BulkGetUsersRankingPublicV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkGetUsersRankingPublicV3NotFound creates a BulkGetUsersRankingPublicV3NotFound with default headers values
func NewBulkGetUsersRankingPublicV3NotFound() *BulkGetUsersRankingPublicV3NotFound {
	return &BulkGetUsersRankingPublicV3NotFound{}
}

/*BulkGetUsersRankingPublicV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71230</td><td>leaderboard configuration not found</td></tr></table>
*/
type BulkGetUsersRankingPublicV3NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *BulkGetUsersRankingPublicV3NotFound) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/bulk][%d] bulkGetUsersRankingPublicV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *BulkGetUsersRankingPublicV3NotFound) ToJSONString() string {
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

func (o *BulkGetUsersRankingPublicV3NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *BulkGetUsersRankingPublicV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkGetUsersRankingPublicV3InternalServerError creates a BulkGetUsersRankingPublicV3InternalServerError with default headers values
func NewBulkGetUsersRankingPublicV3InternalServerError() *BulkGetUsersRankingPublicV3InternalServerError {
	return &BulkGetUsersRankingPublicV3InternalServerError{}
}

/*BulkGetUsersRankingPublicV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type BulkGetUsersRankingPublicV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *BulkGetUsersRankingPublicV3InternalServerError) Error() string {
	return fmt.Sprintf("[POST /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/users/bulk][%d] bulkGetUsersRankingPublicV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkGetUsersRankingPublicV3InternalServerError) ToJSONString() string {
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

func (o *BulkGetUsersRankingPublicV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *BulkGetUsersRankingPublicV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
