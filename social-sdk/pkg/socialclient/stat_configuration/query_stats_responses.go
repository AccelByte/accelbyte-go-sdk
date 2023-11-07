// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_configuration

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
)

// QueryStatsReader is a Reader for the QueryStats structure.
type QueryStatsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryStatsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryStatsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewQueryStatsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewQueryStatsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewQueryStatsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /social/v1/admin/namespaces/{namespace}/stats/search returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryStatsOK creates a QueryStatsOK with default headers values
func NewQueryStatsOK() *QueryStatsOK {
	return &QueryStatsOK{}
}

/*QueryStatsOK handles this case with default header values.

  successful operation
*/
type QueryStatsOK struct {
	Payload *socialclientmodels.StatPagingSlicedResult
}

func (o *QueryStatsOK) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/stats/search][%d] queryStatsOK  %+v", 200, o.ToJSONString())
}

func (o *QueryStatsOK) ToJSONString() string {
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

func (o *QueryStatsOK) GetPayload() *socialclientmodels.StatPagingSlicedResult {
	return o.Payload
}

func (o *QueryStatsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.StatPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryStatsUnauthorized creates a QueryStatsUnauthorized with default headers values
func NewQueryStatsUnauthorized() *QueryStatsUnauthorized {
	return &QueryStatsUnauthorized{}
}

/*QueryStatsUnauthorized handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20001</td><td>Unauthorized</td></tr></table>
*/
type QueryStatsUnauthorized struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *QueryStatsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/stats/search][%d] queryStatsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *QueryStatsUnauthorized) ToJSONString() string {
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

func (o *QueryStatsUnauthorized) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *QueryStatsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryStatsForbidden creates a QueryStatsForbidden with default headers values
func NewQueryStatsForbidden() *QueryStatsForbidden {
	return &QueryStatsForbidden{}
}

/*QueryStatsForbidden handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type QueryStatsForbidden struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *QueryStatsForbidden) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/stats/search][%d] queryStatsForbidden  %+v", 403, o.ToJSONString())
}

func (o *QueryStatsForbidden) ToJSONString() string {
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

func (o *QueryStatsForbidden) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *QueryStatsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryStatsInternalServerError creates a QueryStatsInternalServerError with default headers values
func NewQueryStatsInternalServerError() *QueryStatsInternalServerError {
	return &QueryStatsInternalServerError{}
}

/*QueryStatsInternalServerError handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20000</td><td>Internal server error</td></tr></table>
*/
type QueryStatsInternalServerError struct {
	Payload *socialclientmodels.ErrorEntity
}

func (o *QueryStatsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /social/v1/admin/namespaces/{namespace}/stats/search][%d] queryStatsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *QueryStatsInternalServerError) ToJSONString() string {
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

func (o *QueryStatsInternalServerError) GetPayload() *socialclientmodels.ErrorEntity {
	return o.Payload
}

func (o *QueryStatsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(socialclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
