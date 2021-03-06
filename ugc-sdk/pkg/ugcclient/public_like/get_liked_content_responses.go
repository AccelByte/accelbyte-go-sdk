// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package public_like

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// GetLikedContentReader is a Reader for the GetLikedContent structure.
type GetLikedContentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetLikedContentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetLikedContentOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetLikedContentUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetLikedContentNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetLikedContentInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /ugc/v1/public/namespaces/{namespace}/contents/liked returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetLikedContentOK creates a GetLikedContentOK with default headers values
func NewGetLikedContentOK() *GetLikedContentOK {
	return &GetLikedContentOK{}
}

/*GetLikedContentOK handles this case with default header values.

  OK
*/
type GetLikedContentOK struct {
	Payload *ugcclientmodels.ModelsPaginatedContentDownloadResponse
}

func (o *GetLikedContentOK) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/liked][%d] getLikedContentOK  %+v", 200, o.Payload)
}

func (o *GetLikedContentOK) GetPayload() *ugcclientmodels.ModelsPaginatedContentDownloadResponse {
	return o.Payload
}

func (o *GetLikedContentOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ModelsPaginatedContentDownloadResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetLikedContentUnauthorized creates a GetLikedContentUnauthorized with default headers values
func NewGetLikedContentUnauthorized() *GetLikedContentUnauthorized {
	return &GetLikedContentUnauthorized{}
}

/*GetLikedContentUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetLikedContentUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetLikedContentUnauthorized) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/liked][%d] getLikedContentUnauthorized  %+v", 401, o.Payload)
}

func (o *GetLikedContentUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetLikedContentUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetLikedContentNotFound creates a GetLikedContentNotFound with default headers values
func NewGetLikedContentNotFound() *GetLikedContentNotFound {
	return &GetLikedContentNotFound{}
}

/*GetLikedContentNotFound handles this case with default header values.

  Not Found
*/
type GetLikedContentNotFound struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetLikedContentNotFound) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/liked][%d] getLikedContentNotFound  %+v", 404, o.Payload)
}

func (o *GetLikedContentNotFound) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetLikedContentNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetLikedContentInternalServerError creates a GetLikedContentInternalServerError with default headers values
func NewGetLikedContentInternalServerError() *GetLikedContentInternalServerError {
	return &GetLikedContentInternalServerError{}
}

/*GetLikedContentInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetLikedContentInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *GetLikedContentInternalServerError) Error() string {
	return fmt.Sprintf("[GET /ugc/v1/public/namespaces/{namespace}/contents/liked][%d] getLikedContentInternalServerError  %+v", 500, o.Payload)
}

func (o *GetLikedContentInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *GetLikedContentInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
