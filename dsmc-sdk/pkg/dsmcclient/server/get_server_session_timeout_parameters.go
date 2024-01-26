// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package server

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

// NewGetServerSessionTimeoutParams creates a new GetServerSessionTimeoutParams object
// with the default values initialized.
func NewGetServerSessionTimeoutParams() *GetServerSessionTimeoutParams {
	var ()
	return &GetServerSessionTimeoutParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetServerSessionTimeoutParamsWithTimeout creates a new GetServerSessionTimeoutParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetServerSessionTimeoutParamsWithTimeout(timeout time.Duration) *GetServerSessionTimeoutParams {
	var ()
	return &GetServerSessionTimeoutParams{

		timeout: timeout,
	}
}

// NewGetServerSessionTimeoutParamsWithContext creates a new GetServerSessionTimeoutParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetServerSessionTimeoutParamsWithContext(ctx context.Context) *GetServerSessionTimeoutParams {
	var ()
	return &GetServerSessionTimeoutParams{

		Context: ctx,
	}
}

// NewGetServerSessionTimeoutParamsWithHTTPClient creates a new GetServerSessionTimeoutParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetServerSessionTimeoutParamsWithHTTPClient(client *http.Client) *GetServerSessionTimeoutParams {
	var ()
	return &GetServerSessionTimeoutParams{
		HTTPClient: client,
	}
}

/*GetServerSessionTimeoutParams contains all the parameters to send to the API endpoint
for the get server session timeout operation typically these are written to a http.Request
*/
type GetServerSessionTimeoutParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*PodName
	  DS name

	*/
	PodName string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get server session timeout params
func (o *GetServerSessionTimeoutParams) WithTimeout(timeout time.Duration) *GetServerSessionTimeoutParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get server session timeout params
func (o *GetServerSessionTimeoutParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get server session timeout params
func (o *GetServerSessionTimeoutParams) WithContext(ctx context.Context) *GetServerSessionTimeoutParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get server session timeout params
func (o *GetServerSessionTimeoutParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get server session timeout params
func (o *GetServerSessionTimeoutParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get server session timeout params
func (o *GetServerSessionTimeoutParams) WithHTTPClient(client *http.Client) *GetServerSessionTimeoutParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get server session timeout params
func (o *GetServerSessionTimeoutParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get server session timeout params
func (o *GetServerSessionTimeoutParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetServerSessionTimeoutParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get server session timeout params
func (o *GetServerSessionTimeoutParams) WithNamespace(namespace string) *GetServerSessionTimeoutParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get server session timeout params
func (o *GetServerSessionTimeoutParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPodName adds the podName to the get server session timeout params
func (o *GetServerSessionTimeoutParams) WithPodName(podName string) *GetServerSessionTimeoutParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the get server session timeout params
func (o *GetServerSessionTimeoutParams) SetPodName(podName string) {
	o.PodName = podName
}

// WriteToRequest writes these params to a swagger request
func (o *GetServerSessionTimeoutParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param podName
	if err := r.SetPathParam("podName", o.PodName); err != nil {
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
