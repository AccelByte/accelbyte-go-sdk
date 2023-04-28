// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package tier

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// QueryTiersReader is a Reader for the QueryTiers structure.
type QueryTiersReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryTiersReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryTiersOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryTiersBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewQueryTiersNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryTiersOK creates a QueryTiersOK with default headers values
func NewQueryTiersOK() *QueryTiersOK {
	return &QueryTiersOK{}
}

/*QueryTiersOK handles this case with default header values.

  successful operation
*/
type QueryTiersOK struct {
	Payload *seasonpassclientmodels.TierPagingSlicedResult
}

func (o *QueryTiersOK) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers][%d] queryTiersOK  %+v", 200, o.ToJSONString())
}

func (o *QueryTiersOK) ToJSONString() string {
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

func (o *QueryTiersOK) GetPayload() *seasonpassclientmodels.TierPagingSlicedResult {
	return o.Payload
}

func (o *QueryTiersOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.TierPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryTiersBadRequest creates a QueryTiersBadRequest with default headers values
func NewQueryTiersBadRequest() *QueryTiersBadRequest {
	return &QueryTiersBadRequest{}
}

/*QueryTiersBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type QueryTiersBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *QueryTiersBadRequest) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers][%d] queryTiersBadRequest  %+v", 400, o.ToJSONString())
}

func (o *QueryTiersBadRequest) ToJSONString() string {
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

func (o *QueryTiersBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *QueryTiersBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryTiersNotFound creates a QueryTiersNotFound with default headers values
func NewQueryTiersNotFound() *QueryTiersNotFound {
	return &QueryTiersNotFound{}
}

/*QueryTiersNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49143</td><td>Season [{seasonId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type QueryTiersNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *QueryTiersNotFound) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers][%d] queryTiersNotFound  %+v", 404, o.ToJSONString())
}

func (o *QueryTiersNotFound) ToJSONString() string {
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

func (o *QueryTiersNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *QueryTiersNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
