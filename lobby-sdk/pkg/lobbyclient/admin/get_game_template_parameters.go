// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin

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

// NewGetGameTemplateParams creates a new GetGameTemplateParams object
// with the default values initialized.
func NewGetGameTemplateParams() *GetGameTemplateParams {
	var ()
	return &GetGameTemplateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGameTemplateParamsWithTimeout creates a new GetGameTemplateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGameTemplateParamsWithTimeout(timeout time.Duration) *GetGameTemplateParams {
	var ()
	return &GetGameTemplateParams{

		timeout: timeout,
	}
}

// NewGetGameTemplateParamsWithContext creates a new GetGameTemplateParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetGameTemplateParamsWithContext(ctx context.Context) *GetGameTemplateParams {
	var ()
	return &GetGameTemplateParams{

		Context: ctx,
	}
}

// NewGetGameTemplateParamsWithHTTPClient creates a new GetGameTemplateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGameTemplateParamsWithHTTPClient(client *http.Client) *GetGameTemplateParams {
	var ()
	return &GetGameTemplateParams{
		HTTPClient: client,
	}
}

/*GetGameTemplateParams contains all the parameters to send to the API endpoint
for the get game template operation typically these are written to a http.Request
*/
type GetGameTemplateParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get game template params
func (o *GetGameTemplateParams) WithTimeout(timeout time.Duration) *GetGameTemplateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get game template params
func (o *GetGameTemplateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get game template params
func (o *GetGameTemplateParams) WithContext(ctx context.Context) *GetGameTemplateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get game template params
func (o *GetGameTemplateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get game template params
func (o *GetGameTemplateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get game template params
func (o *GetGameTemplateParams) WithHTTPClient(client *http.Client) *GetGameTemplateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get game template params
func (o *GetGameTemplateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get game template params
func (o *GetGameTemplateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetGameTemplateParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get game template params
func (o *GetGameTemplateParams) WithNamespace(namespace string) *GetGameTemplateParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get game template params
func (o *GetGameTemplateParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetGameTemplateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
