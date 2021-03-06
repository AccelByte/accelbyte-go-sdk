// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package e_q_u8_config

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// DeleteConfigReader is a Reader for the DeleteConfig structure.
type DeleteConfigReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteConfigReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteConfigNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /basic/v1/admin/namespaces/{namespace}/equ8/config returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteConfigNoContent creates a DeleteConfigNoContent with default headers values
func NewDeleteConfigNoContent() *DeleteConfigNoContent {
	return &DeleteConfigNoContent{}
}

/*DeleteConfigNoContent handles this case with default header values.

  Delete equ8 config successfully
*/
type DeleteConfigNoContent struct {
}

func (o *DeleteConfigNoContent) Error() string {
	return fmt.Sprintf("[DELETE /basic/v1/admin/namespaces/{namespace}/equ8/config][%d] deleteConfigNoContent ", 204)
}

func (o *DeleteConfigNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}
