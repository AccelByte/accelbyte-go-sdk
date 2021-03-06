// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package season

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// QueryUserExpGrantHistoryTagReader is a Reader for the QueryUserExpGrantHistoryTag structure.
type QueryUserExpGrantHistoryTagReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryUserExpGrantHistoryTagReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryUserExpGrantHistoryTagOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryUserExpGrantHistoryTagBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history/tags returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryUserExpGrantHistoryTagOK creates a QueryUserExpGrantHistoryTagOK with default headers values
func NewQueryUserExpGrantHistoryTagOK() *QueryUserExpGrantHistoryTagOK {
	return &QueryUserExpGrantHistoryTagOK{}
}

/*QueryUserExpGrantHistoryTagOK handles this case with default header values.

  successful operation
*/
type QueryUserExpGrantHistoryTagOK struct {
	Payload *seasonpassclientmodels.ReasonTagsResult
}

func (o *QueryUserExpGrantHistoryTagOK) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history/tags][%d] queryUserExpGrantHistoryTagOK  %+v", 200, o.Payload)
}

func (o *QueryUserExpGrantHistoryTagOK) GetPayload() *seasonpassclientmodels.ReasonTagsResult {
	return o.Payload
}

func (o *QueryUserExpGrantHistoryTagOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(seasonpassclientmodels.ReasonTagsResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryUserExpGrantHistoryTagBadRequest creates a QueryUserExpGrantHistoryTagBadRequest with default headers values
func NewQueryUserExpGrantHistoryTagBadRequest() *QueryUserExpGrantHistoryTagBadRequest {
	return &QueryUserExpGrantHistoryTagBadRequest{}
}

/*QueryUserExpGrantHistoryTagBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type QueryUserExpGrantHistoryTagBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *QueryUserExpGrantHistoryTagBadRequest) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history/tags][%d] queryUserExpGrantHistoryTagBadRequest  %+v", 400, o.Payload)
}

func (o *QueryUserExpGrantHistoryTagBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *QueryUserExpGrantHistoryTagBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
