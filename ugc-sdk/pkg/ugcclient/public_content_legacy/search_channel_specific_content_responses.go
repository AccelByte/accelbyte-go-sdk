// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_legacy

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// SearchChannelSpecificContentReader is a Reader for the SearchChannelSpecificContent structure.
type SearchChannelSpecificContentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *SearchChannelSpecificContentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewSearchChannelSpecificContentOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewSearchChannelSpecificContentBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewSearchChannelSpecificContentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewSearchChannelSpecificContentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/public/namespaces/{namespace}/channels/{channelId}/contents returns an error %d: %s", response.Code(), string(data))
	}
}

// NewSearchChannelSpecificContentOK creates a SearchChannelSpecificContentOK with default headers values
func NewSearchChannelSpecificContentOK() *SearchChannelSpecificContentOK {
	return &SearchChannelSpecificContentOK{}
}

/*SearchChannelSpecificContentOK handles this case with default header values.

  Search contents specific to a channel
*/
type SearchChannelSpecificContentOK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponse
}

func (o *SearchChannelSpecificContentOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/channels/{channelId}/contents][%d] searchChannelSpecificContentOK  %+v", 200, o.ToJSONString())
}

func (o *SearchChannelSpecificContentOK) ToJSONString() string {
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

func (o *SearchChannelSpecificContentOK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponse {
	return o.Payload
}

func (o *SearchChannelSpecificContentOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsPaginatedContentDownloadResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSearchChannelSpecificContentBadRequest creates a SearchChannelSpecificContentBadRequest with default headers values
func NewSearchChannelSpecificContentBadRequest() *SearchChannelSpecificContentBadRequest {
	return &SearchChannelSpecificContentBadRequest{}
}

/*SearchChannelSpecificContentBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770800</td><td>invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter</td></tr></table>
*/
type SearchChannelSpecificContentBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SearchChannelSpecificContentBadRequest) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/channels/{channelId}/contents][%d] searchChannelSpecificContentBadRequest  %+v", 400, o.ToJSONString())
}

func (o *SearchChannelSpecificContentBadRequest) ToJSONString() string {
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

func (o *SearchChannelSpecificContentBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SearchChannelSpecificContentBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSearchChannelSpecificContentUnauthorized creates a SearchChannelSpecificContentUnauthorized with default headers values
func NewSearchChannelSpecificContentUnauthorized() *SearchChannelSpecificContentUnauthorized {
	return &SearchChannelSpecificContentUnauthorized{}
}

/*SearchChannelSpecificContentUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type SearchChannelSpecificContentUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SearchChannelSpecificContentUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/channels/{channelId}/contents][%d] searchChannelSpecificContentUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *SearchChannelSpecificContentUnauthorized) ToJSONString() string {
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

func (o *SearchChannelSpecificContentUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SearchChannelSpecificContentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewSearchChannelSpecificContentInternalServerError creates a SearchChannelSpecificContentInternalServerError with default headers values
func NewSearchChannelSpecificContentInternalServerError() *SearchChannelSpecificContentInternalServerError {
	return &SearchChannelSpecificContentInternalServerError{}
}

/*SearchChannelSpecificContentInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770801</td><td>Unable to get ugc content: database/Unable to get creator</td></tr><tr><td>770803</td><td>Failed generate download URL</td></tr></table>
*/
type SearchChannelSpecificContentInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *SearchChannelSpecificContentInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/channels/{channelId}/contents][%d] searchChannelSpecificContentInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *SearchChannelSpecificContentInternalServerError) ToJSONString() string {
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

func (o *SearchChannelSpecificContentInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *SearchChannelSpecificContentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
