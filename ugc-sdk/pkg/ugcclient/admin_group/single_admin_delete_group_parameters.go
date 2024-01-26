// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_group

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewSingleAdminDeleteGroupParams creates a new SingleAdminDeleteGroupParams object
// with the default values initialized.
func NewSingleAdminDeleteGroupParams() *SingleAdminDeleteGroupParams {
	var ()
	return &SingleAdminDeleteGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSingleAdminDeleteGroupParamsWithTimeout creates a new SingleAdminDeleteGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSingleAdminDeleteGroupParamsWithTimeout(timeout time.Duration) *SingleAdminDeleteGroupParams {
	var ()
	return &SingleAdminDeleteGroupParams{

		timeout: timeout,
	}
}

// NewSingleAdminDeleteGroupParamsWithContext creates a new SingleAdminDeleteGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewSingleAdminDeleteGroupParamsWithContext(ctx context.Context) *SingleAdminDeleteGroupParams {
	var ()
	return &SingleAdminDeleteGroupParams{

		Context: ctx,
	}
}

// NewSingleAdminDeleteGroupParamsWithHTTPClient creates a new SingleAdminDeleteGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSingleAdminDeleteGroupParamsWithHTTPClient(client *http.Client) *SingleAdminDeleteGroupParams {
	var ()
	return &SingleAdminDeleteGroupParams{
		HTTPClient: client,
	}
}

/*SingleAdminDeleteGroupParams contains all the parameters to send to the API endpoint
for the single admin delete group operation typically these are written to a http.Request
*/
type SingleAdminDeleteGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*GroupID
	  group ID

	*/
	GroupID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the single admin delete group params
func (o *SingleAdminDeleteGroupParams) WithTimeout(timeout time.Duration) *SingleAdminDeleteGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the single admin delete group params
func (o *SingleAdminDeleteGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the single admin delete group params
func (o *SingleAdminDeleteGroupParams) WithContext(ctx context.Context) *SingleAdminDeleteGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the single admin delete group params
func (o *SingleAdminDeleteGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the single admin delete group params
func (o *SingleAdminDeleteGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the single admin delete group params
func (o *SingleAdminDeleteGroupParams) WithHTTPClient(client *http.Client) *SingleAdminDeleteGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the single admin delete group params
func (o *SingleAdminDeleteGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the single admin delete group params
func (o *SingleAdminDeleteGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SingleAdminDeleteGroupParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithGroupID adds the groupID to the single admin delete group params
func (o *SingleAdminDeleteGroupParams) WithGroupID(groupID string) *SingleAdminDeleteGroupParams {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the single admin delete group params
func (o *SingleAdminDeleteGroupParams) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the single admin delete group params
func (o *SingleAdminDeleteGroupParams) WithNamespace(namespace string) *SingleAdminDeleteGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the single admin delete group params
func (o *SingleAdminDeleteGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SingleAdminDeleteGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
