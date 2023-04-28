// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

// RebalanceReader is a Reader for the Rebalance structure.
type RebalanceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RebalanceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRebalanceOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewRebalanceBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewRebalanceUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRebalanceForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRebalanceNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewRebalanceInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /matchmaking/namespaces/{namespace}/rebalance returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRebalanceOK creates a RebalanceOK with default headers values
func NewRebalanceOK() *RebalanceOK {
	return &RebalanceOK{}
}

/*RebalanceOK handles this case with default header values.

  OK
*/
type RebalanceOK struct {
	Payload *matchmakingclientmodels.ModelsRebalanceResponse
}

func (o *RebalanceOK) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/rebalance][%d] rebalanceOK  %+v", 200, o.ToJSONString())
}

func (o *RebalanceOK) ToJSONString() string {
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

func (o *RebalanceOK) GetPayload() *matchmakingclientmodels.ModelsRebalanceResponse {
	return o.Payload
}

func (o *RebalanceOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ModelsRebalanceResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRebalanceBadRequest creates a RebalanceBadRequest with default headers values
func NewRebalanceBadRequest() *RebalanceBadRequest {
	return &RebalanceBadRequest{}
}

/*RebalanceBadRequest handles this case with default header values.

  Bad Request
*/
type RebalanceBadRequest struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *RebalanceBadRequest) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/rebalance][%d] rebalanceBadRequest  %+v", 400, o.ToJSONString())
}

func (o *RebalanceBadRequest) ToJSONString() string {
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

func (o *RebalanceBadRequest) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *RebalanceBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRebalanceUnauthorized creates a RebalanceUnauthorized with default headers values
func NewRebalanceUnauthorized() *RebalanceUnauthorized {
	return &RebalanceUnauthorized{}
}

/*RebalanceUnauthorized handles this case with default header values.

  Unauthorized
*/
type RebalanceUnauthorized struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *RebalanceUnauthorized) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/rebalance][%d] rebalanceUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *RebalanceUnauthorized) ToJSONString() string {
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

func (o *RebalanceUnauthorized) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *RebalanceUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRebalanceForbidden creates a RebalanceForbidden with default headers values
func NewRebalanceForbidden() *RebalanceForbidden {
	return &RebalanceForbidden{}
}

/*RebalanceForbidden handles this case with default header values.

  Forbidden
*/
type RebalanceForbidden struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *RebalanceForbidden) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/rebalance][%d] rebalanceForbidden  %+v", 403, o.ToJSONString())
}

func (o *RebalanceForbidden) ToJSONString() string {
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

func (o *RebalanceForbidden) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *RebalanceForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRebalanceNotFound creates a RebalanceNotFound with default headers values
func NewRebalanceNotFound() *RebalanceNotFound {
	return &RebalanceNotFound{}
}

/*RebalanceNotFound handles this case with default header values.

  Not Found
*/
type RebalanceNotFound struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *RebalanceNotFound) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/rebalance][%d] rebalanceNotFound  %+v", 404, o.ToJSONString())
}

func (o *RebalanceNotFound) ToJSONString() string {
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

func (o *RebalanceNotFound) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *RebalanceNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRebalanceInternalServerError creates a RebalanceInternalServerError with default headers values
func NewRebalanceInternalServerError() *RebalanceInternalServerError {
	return &RebalanceInternalServerError{}
}

/*RebalanceInternalServerError handles this case with default header values.

  Internal Server Error
*/
type RebalanceInternalServerError struct {
	Payload *matchmakingclientmodels.ResponseError
}

func (o *RebalanceInternalServerError) Error() string {
	return fmt.Sprintf("[POST /matchmaking/namespaces/{namespace}/rebalance][%d] rebalanceInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *RebalanceInternalServerError) ToJSONString() string {
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

func (o *RebalanceInternalServerError) GetPayload() *matchmakingclientmodels.ResponseError {
	return o.Payload
}

func (o *RebalanceInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(matchmakingclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
