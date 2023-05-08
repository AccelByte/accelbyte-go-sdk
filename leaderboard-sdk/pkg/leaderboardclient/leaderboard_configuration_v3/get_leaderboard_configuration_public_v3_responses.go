// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package leaderboard_configuration_v3

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

// GetLeaderboardConfigurationPublicV3Reader is a Reader for the GetLeaderboardConfigurationPublicV3 structure.
type GetLeaderboardConfigurationPublicV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetLeaderboardConfigurationPublicV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetLeaderboardConfigurationPublicV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetLeaderboardConfigurationPublicV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetLeaderboardConfigurationPublicV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetLeaderboardConfigurationPublicV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetLeaderboardConfigurationPublicV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetLeaderboardConfigurationPublicV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetLeaderboardConfigurationPublicV3OK creates a GetLeaderboardConfigurationPublicV3OK with default headers values
func NewGetLeaderboardConfigurationPublicV3OK() *GetLeaderboardConfigurationPublicV3OK {
	return &GetLeaderboardConfigurationPublicV3OK{}
}

/*GetLeaderboardConfigurationPublicV3OK handles this case with default header values.

  OK
*/
type GetLeaderboardConfigurationPublicV3OK struct {
	Payload *leaderboardclientmodels.ModelsGetLeaderboardConfigPublicRespV3
}

func (o *GetLeaderboardConfigurationPublicV3OK) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] getLeaderboardConfigurationPublicV3OK  %+v", 200, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationPublicV3OK) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationPublicV3OK) GetPayload() *leaderboardclientmodels.ModelsGetLeaderboardConfigPublicRespV3 {
	return o.Payload
}

func (o *GetLeaderboardConfigurationPublicV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(leaderboardclientmodels.ModelsGetLeaderboardConfigPublicRespV3)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetLeaderboardConfigurationPublicV3BadRequest creates a GetLeaderboardConfigurationPublicV3BadRequest with default headers values
func NewGetLeaderboardConfigurationPublicV3BadRequest() *GetLeaderboardConfigurationPublicV3BadRequest {
	return &GetLeaderboardConfigurationPublicV3BadRequest{}
}

/*GetLeaderboardConfigurationPublicV3BadRequest handles this case with default header values.

  Bad Request
*/
type GetLeaderboardConfigurationPublicV3BadRequest struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationPublicV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] getLeaderboardConfigurationPublicV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationPublicV3BadRequest) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationPublicV3BadRequest) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationPublicV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetLeaderboardConfigurationPublicV3Unauthorized creates a GetLeaderboardConfigurationPublicV3Unauthorized with default headers values
func NewGetLeaderboardConfigurationPublicV3Unauthorized() *GetLeaderboardConfigurationPublicV3Unauthorized {
	return &GetLeaderboardConfigurationPublicV3Unauthorized{}
}

/*GetLeaderboardConfigurationPublicV3Unauthorized handles this case with default header values.

  Unauthorized
*/
type GetLeaderboardConfigurationPublicV3Unauthorized struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationPublicV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] getLeaderboardConfigurationPublicV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationPublicV3Unauthorized) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationPublicV3Unauthorized) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationPublicV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetLeaderboardConfigurationPublicV3Forbidden creates a GetLeaderboardConfigurationPublicV3Forbidden with default headers values
func NewGetLeaderboardConfigurationPublicV3Forbidden() *GetLeaderboardConfigurationPublicV3Forbidden {
	return &GetLeaderboardConfigurationPublicV3Forbidden{}
}

/*GetLeaderboardConfigurationPublicV3Forbidden handles this case with default header values.

  Forbidden
*/
type GetLeaderboardConfigurationPublicV3Forbidden struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationPublicV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] getLeaderboardConfigurationPublicV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationPublicV3Forbidden) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationPublicV3Forbidden) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationPublicV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetLeaderboardConfigurationPublicV3NotFound creates a GetLeaderboardConfigurationPublicV3NotFound with default headers values
func NewGetLeaderboardConfigurationPublicV3NotFound() *GetLeaderboardConfigurationPublicV3NotFound {
	return &GetLeaderboardConfigurationPublicV3NotFound{}
}

/*GetLeaderboardConfigurationPublicV3NotFound handles this case with default header values.

  Not Found
*/
type GetLeaderboardConfigurationPublicV3NotFound struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationPublicV3NotFound) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] getLeaderboardConfigurationPublicV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationPublicV3NotFound) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationPublicV3NotFound) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationPublicV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetLeaderboardConfigurationPublicV3InternalServerError creates a GetLeaderboardConfigurationPublicV3InternalServerError with default headers values
func NewGetLeaderboardConfigurationPublicV3InternalServerError() *GetLeaderboardConfigurationPublicV3InternalServerError {
	return &GetLeaderboardConfigurationPublicV3InternalServerError{}
}

/*GetLeaderboardConfigurationPublicV3InternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetLeaderboardConfigurationPublicV3InternalServerError struct {
	Payload *leaderboardclientmodels.ResponseErrorResponse
}

func (o *GetLeaderboardConfigurationPublicV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /leaderboard/v3/public/namespaces/{namespace}/leaderboards/{leaderboardCode}][%d] getLeaderboardConfigurationPublicV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetLeaderboardConfigurationPublicV3InternalServerError) ToJSONString() string {
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

func (o *GetLeaderboardConfigurationPublicV3InternalServerError) GetPayload() *leaderboardclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *GetLeaderboardConfigurationPublicV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
