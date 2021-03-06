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

// QueryUserExpGrantHistoryReader is a Reader for the QueryUserExpGrantHistory structure.
type QueryUserExpGrantHistoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *QueryUserExpGrantHistoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewQueryUserExpGrantHistoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewQueryUserExpGrantHistoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history returns an error %d: %s", response.Code(), string(data))
	}
}

// NewQueryUserExpGrantHistoryOK creates a QueryUserExpGrantHistoryOK with default headers values
func NewQueryUserExpGrantHistoryOK() *QueryUserExpGrantHistoryOK {
	return &QueryUserExpGrantHistoryOK{}
}

/*QueryUserExpGrantHistoryOK handles this case with default header values.

  successful operation
*/
type QueryUserExpGrantHistoryOK struct {
	Payload *seasonpassclientmodels.ExpGrantHistoryPagingSlicedResult
}

func (o *QueryUserExpGrantHistoryOK) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history][%d] queryUserExpGrantHistoryOK  %+v", 200, o.Payload)
}

func (o *QueryUserExpGrantHistoryOK) GetPayload() *seasonpassclientmodels.ExpGrantHistoryPagingSlicedResult {
	return o.Payload
}

func (o *QueryUserExpGrantHistoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(seasonpassclientmodels.ExpGrantHistoryPagingSlicedResult)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewQueryUserExpGrantHistoryBadRequest creates a QueryUserExpGrantHistoryBadRequest with default headers values
func NewQueryUserExpGrantHistoryBadRequest() *QueryUserExpGrantHistoryBadRequest {
	return &QueryUserExpGrantHistoryBadRequest{}
}

/*QueryUserExpGrantHistoryBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type QueryUserExpGrantHistoryBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *QueryUserExpGrantHistoryBadRequest) Error() string {
	return fmt.Sprintf("[GET /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history][%d] queryUserExpGrantHistoryBadRequest  %+v", 400, o.Payload)
}

func (o *QueryUserExpGrantHistoryBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *QueryUserExpGrantHistoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
