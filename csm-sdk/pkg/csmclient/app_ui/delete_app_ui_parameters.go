// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package app_ui

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

// NewDeleteAppUIParams creates a new DeleteAppUIParams object
// with the default values initialized.
func NewDeleteAppUIParams() *DeleteAppUIParams {
	var ()
	return &DeleteAppUIParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteAppUIParamsWithTimeout creates a new DeleteAppUIParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteAppUIParamsWithTimeout(timeout time.Duration) *DeleteAppUIParams {
	var ()
	return &DeleteAppUIParams{

		timeout: timeout,
	}
}

// NewDeleteAppUIParamsWithContext creates a new DeleteAppUIParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteAppUIParamsWithContext(ctx context.Context) *DeleteAppUIParams {
	var ()
	return &DeleteAppUIParams{

		Context: ctx,
	}
}

// NewDeleteAppUIParamsWithHTTPClient creates a new DeleteAppUIParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteAppUIParamsWithHTTPClient(client *http.Client) *DeleteAppUIParams {
	var ()
	return &DeleteAppUIParams{
		HTTPClient: client,
	}
}

/*DeleteAppUIParams contains all the parameters to send to the API endpoint
for the delete app ui operation typically these are written to a http.Request
*/
type DeleteAppUIParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AppUIName
	  App UI Name

	*/
	AppUIName string
	/*Namespace
	  Game Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete app ui params
func (o *DeleteAppUIParams) WithTimeout(timeout time.Duration) *DeleteAppUIParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete app ui params
func (o *DeleteAppUIParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete app ui params
func (o *DeleteAppUIParams) WithContext(ctx context.Context) *DeleteAppUIParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete app ui params
func (o *DeleteAppUIParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete app ui params
func (o *DeleteAppUIParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete app ui params
func (o *DeleteAppUIParams) WithHTTPClient(client *http.Client) *DeleteAppUIParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete app ui params
func (o *DeleteAppUIParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete app ui params
func (o *DeleteAppUIParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteAppUIParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAppUIName adds the appUIName to the delete app ui params
func (o *DeleteAppUIParams) WithAppUIName(appUIName string) *DeleteAppUIParams {
	o.SetAppUIName(appUIName)
	return o
}

// SetAppUIName adds the appUiName to the delete app ui params
func (o *DeleteAppUIParams) SetAppUIName(appUIName string) {
	o.AppUIName = appUIName
}

// WithNamespace adds the namespace to the delete app ui params
func (o *DeleteAppUIParams) WithNamespace(namespace string) *DeleteAppUIParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete app ui params
func (o *DeleteAppUIParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteAppUIParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param appUiName
	if err := r.SetPathParam("appUiName", o.AppUIName); err != nil {
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
