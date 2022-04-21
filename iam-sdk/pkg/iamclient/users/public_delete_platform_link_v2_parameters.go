// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package users

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewPublicDeletePlatformLinkV2Params creates a new PublicDeletePlatformLinkV2Params object
// with the default values initialized.
func NewPublicDeletePlatformLinkV2Params() *PublicDeletePlatformLinkV2Params {
	var ()
	return &PublicDeletePlatformLinkV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicDeletePlatformLinkV2ParamsWithTimeout creates a new PublicDeletePlatformLinkV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicDeletePlatformLinkV2ParamsWithTimeout(timeout time.Duration) *PublicDeletePlatformLinkV2Params {
	var ()
	return &PublicDeletePlatformLinkV2Params{

		timeout: timeout,
	}
}

// NewPublicDeletePlatformLinkV2ParamsWithContext creates a new PublicDeletePlatformLinkV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicDeletePlatformLinkV2ParamsWithContext(ctx context.Context) *PublicDeletePlatformLinkV2Params {
	var ()
	return &PublicDeletePlatformLinkV2Params{

		Context: ctx,
	}
}

// NewPublicDeletePlatformLinkV2ParamsWithHTTPClient creates a new PublicDeletePlatformLinkV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicDeletePlatformLinkV2ParamsWithHTTPClient(client *http.Client) *PublicDeletePlatformLinkV2Params {
	var ()
	return &PublicDeletePlatformLinkV2Params{
		HTTPClient: client,
	}
}

/*PublicDeletePlatformLinkV2Params contains all the parameters to send to the API endpoint
for the public delete platform link v2 operation typically these are written to a http.Request
*/
type PublicDeletePlatformLinkV2Params struct {

	/*Namespace
	  Namespace

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*PlatformNamespace
	  Namespace of the platform account to be deleted

	*/
	PlatformNamespace *string
	/*UserID
	  User ID

	*/
	UserID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the public delete platform link v2 params
func (o *PublicDeletePlatformLinkV2Params) WithTimeout(timeout time.Duration) *PublicDeletePlatformLinkV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public delete platform link v2 params
func (o *PublicDeletePlatformLinkV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public delete platform link v2 params
func (o *PublicDeletePlatformLinkV2Params) WithContext(ctx context.Context) *PublicDeletePlatformLinkV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public delete platform link v2 params
func (o *PublicDeletePlatformLinkV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the public delete platform link v2 params
func (o *PublicDeletePlatformLinkV2Params) WithHTTPClient(client *http.Client) *PublicDeletePlatformLinkV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public delete platform link v2 params
func (o *PublicDeletePlatformLinkV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the public delete platform link v2 params
func (o *PublicDeletePlatformLinkV2Params) WithNamespace(namespace string) *PublicDeletePlatformLinkV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public delete platform link v2 params
func (o *PublicDeletePlatformLinkV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the public delete platform link v2 params
func (o *PublicDeletePlatformLinkV2Params) WithPlatformID(platformID string) *PublicDeletePlatformLinkV2Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public delete platform link v2 params
func (o *PublicDeletePlatformLinkV2Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithPlatformNamespace adds the platformNamespace to the public delete platform link v2 params
func (o *PublicDeletePlatformLinkV2Params) WithPlatformNamespace(platformNamespace *string) *PublicDeletePlatformLinkV2Params {
	o.SetPlatformNamespace(platformNamespace)
	return o
}

// SetPlatformNamespace adds the platformNamespace to the public delete platform link v2 params
func (o *PublicDeletePlatformLinkV2Params) SetPlatformNamespace(platformNamespace *string) {
	o.PlatformNamespace = platformNamespace
}

// WithUserID adds the userID to the public delete platform link v2 params
func (o *PublicDeletePlatformLinkV2Params) WithUserID(userID string) *PublicDeletePlatformLinkV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public delete platform link v2 params
func (o *PublicDeletePlatformLinkV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicDeletePlatformLinkV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
		return err
	}

	if o.PlatformNamespace != nil {

		// form param platform_namespace
		var frPlatformNamespace string
		if o.PlatformNamespace != nil {
			frPlatformNamespace = *o.PlatformNamespace
		}
		fPlatformNamespace := frPlatformNamespace
		if fPlatformNamespace != "" {
			if err := r.SetFormParam("platform_namespace", fPlatformNamespace); err != nil {
				return err
			}
		}

	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
