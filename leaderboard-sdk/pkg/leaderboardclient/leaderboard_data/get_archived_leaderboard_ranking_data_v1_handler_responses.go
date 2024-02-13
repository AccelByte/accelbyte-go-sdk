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

// GetArchivedLeaderboardRankingDataV1HandlerReader is a Reader for the GetArchivedLeaderboardRankingDataV1Handler structure.
type GetArchivedLeaderboardRankingDataV1HandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetArchivedLeaderboardRankingDataV1HandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetArchivedLeaderboardRankingDataV1HandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetArchivedLeaderboardRankingDataV1HandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetArchivedLeaderboardRankingDataV1HandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetArchivedLeaderboardRankingDataV1HandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetArchivedLeaderboardRankingDataV1HandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetArchivedLeaderboardRankingDataV1HandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/archived returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetArchivedLeaderboardRankingDataV1HandlerOK creates a GetArchivedLeaderboardRankingDataV1HandlerOK with default headers values
func NewGetArchivedLeaderboardRankingDataV1HandlerOK() *GetArchivedLeaderboardRankingDataV1HandlerOK {
	return &GetArchivedLeaderboardRankingDataV1HandlerOK{}
}

/*GetArchivedLeaderboardRankingDataV1HandlerOK handles this case with default header values.

  Archived leaderboard retrieved
*/
type GetArchivedLeaderboardRankingDataV1HandlerOK struct {
	Payload []*leaderboardclientmodels.ModelsArchiveLeaderboardSignedURLResponse
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerOK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/archived][%d] getArchivedLeaderboardRankingDataV1HandlerOK  %+v", 200, o.ToJSONString())
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerOK) ToJSONString() string {
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

func (o *GetArchivedLeaderboardRankingDataV1HandlerOK) GetPayload() []*leaderboardclientmodels.ModelsArchiveLeaderboardSignedURLResponse {
	return o.Payload
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetArchivedLeaderboardRankingDataV1HandlerBadRequest creates a GetArchivedLeaderboardRankingDataV1HandlerBadRequest with default headers values
func NewGetArchivedLeaderboardRankingDataV1HandlerBadRequest() *GetArchivedLeaderboardRankingDataV1HandlerBadRequest {
	return &GetArchivedLeaderboardRankingDataV1HandlerBadRequest{}
}

/*GetArchivedLeaderboardRankingDataV1HandlerBadRequest handles this case with default header values.


 */
type GetArchivedLeaderboardRankingDataV1HandlerBadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/archived][%d] getArchivedLeaderboardRankingDataV1HandlerBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerBadRequest) ToJSONString() string {
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

func (o *GetArchivedLeaderboardRankingDataV1HandlerBadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetArchivedLeaderboardRankingDataV1HandlerUnauthorized creates a GetArchivedLeaderboardRankingDataV1HandlerUnauthorized with default headers values
func NewGetArchivedLeaderboardRankingDataV1HandlerUnauthorized() *GetArchivedLeaderboardRankingDataV1HandlerUnauthorized {
	return &GetArchivedLeaderboardRankingDataV1HandlerUnauthorized{}
}

/*GetArchivedLeaderboardRankingDataV1HandlerUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetArchivedLeaderboardRankingDataV1HandlerUnauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/archived][%d] getArchivedLeaderboardRankingDataV1HandlerUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerUnauthorized) ToJSONString() string {
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

func (o *GetArchivedLeaderboardRankingDataV1HandlerUnauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetArchivedLeaderboardRankingDataV1HandlerForbidden creates a GetArchivedLeaderboardRankingDataV1HandlerForbidden with default headers values
func NewGetArchivedLeaderboardRankingDataV1HandlerForbidden() *GetArchivedLeaderboardRankingDataV1HandlerForbidden {
	return &GetArchivedLeaderboardRankingDataV1HandlerForbidden{}
}

/*GetArchivedLeaderboardRankingDataV1HandlerForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type GetArchivedLeaderboardRankingDataV1HandlerForbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/archived][%d] getArchivedLeaderboardRankingDataV1HandlerForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerForbidden) ToJSONString() string {
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

func (o *GetArchivedLeaderboardRankingDataV1HandlerForbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetArchivedLeaderboardRankingDataV1HandlerNotFound creates a GetArchivedLeaderboardRankingDataV1HandlerNotFound with default headers values
func NewGetArchivedLeaderboardRankingDataV1HandlerNotFound() *GetArchivedLeaderboardRankingDataV1HandlerNotFound {
	return &GetArchivedLeaderboardRankingDataV1HandlerNotFound{}
}

/*GetArchivedLeaderboardRankingDataV1HandlerNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>71230</td><td>leaderboard configuration not found</td></tr></table>
*/
type GetArchivedLeaderboardRankingDataV1HandlerNotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/archived][%d] getArchivedLeaderboardRankingDataV1HandlerNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerNotFound) ToJSONString() string {
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

func (o *GetArchivedLeaderboardRankingDataV1HandlerNotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetArchivedLeaderboardRankingDataV1HandlerInternalServerError creates a GetArchivedLeaderboardRankingDataV1HandlerInternalServerError with default headers values
func NewGetArchivedLeaderboardRankingDataV1HandlerInternalServerError() *GetArchivedLeaderboardRankingDataV1HandlerInternalServerError {
	return &GetArchivedLeaderboardRankingDataV1HandlerInternalServerError{}
}

/*GetArchivedLeaderboardRankingDataV1HandlerInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetArchivedLeaderboardRankingDataV1HandlerInternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v1/public/namespaces/{namespace}/leaderboards/{leaderboardCode}/archived][%d] getArchivedLeaderboardRankingDataV1HandlerInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerInternalServerError) ToJSONString() string {
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

func (o *GetArchivedLeaderboardRankingDataV1HandlerInternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetArchivedLeaderboardRankingDataV1HandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
