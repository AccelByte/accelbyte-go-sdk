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

// NewCountServerDetailedClientParams creates a new CountServerDetailedClientParams object
// with the default values initialized.
func NewCountServerDetailedClientParams() *CountServerDetailedClientParams {
	var ()
	return &CountServerDetailedClientParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCountServerDetailedClientParamsWithTimeout creates a new CountServerDetailedClientParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCountServerDetailedClientParamsWithTimeout(timeout time.Duration) *CountServerDetailedClientParams {
	var ()
	return &CountServerDetailedClientParams{

		timeout: timeout,
	}
}

// NewCountServerDetailedClientParamsWithContext creates a new CountServerDetailedClientParams object
// with the default values initialized, and the ability to set a context for a request
func NewCountServerDetailedClientParamsWithContext(ctx context.Context) *CountServerDetailedClientParams {
	var ()
	return &CountServerDetailedClientParams{

		Context: ctx,
	}
}

// NewCountServerDetailedClientParamsWithHTTPClient creates a new CountServerDetailedClientParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCountServerDetailedClientParamsWithHTTPClient(client *http.Client) *CountServerDetailedClientParams {
	var ()
	return &CountServerDetailedClientParams{
		HTTPClient: client,
	}
}

/*CountServerDetailedClientParams contains all the parameters to send to the API endpoint
for the count server detailed client operation typically these are written to a http.Request
*/
type CountServerDetailedClientParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Region
	  region where DS server is located.

	*/
	Region *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the count server detailed client params
func (o *CountServerDetailedClientParams) WithTimeout(timeout time.Duration) *CountServerDetailedClientParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the count server detailed client params
func (o *CountServerDetailedClientParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the count server detailed client params
func (o *CountServerDetailedClientParams) WithContext(ctx context.Context) *CountServerDetailedClientParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the count server detailed client params
func (o *CountServerDetailedClientParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the count server detailed client params
func (o *CountServerDetailedClientParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the count server detailed client params
func (o *CountServerDetailedClientParams) WithHTTPClient(client *http.Client) *CountServerDetailedClientParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the count server detailed client params
func (o *CountServerDetailedClientParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the count server detailed client params
func (o *CountServerDetailedClientParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CountServerDetailedClientParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the count server detailed client params
func (o *CountServerDetailedClientParams) WithNamespace(namespace string) *CountServerDetailedClientParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the count server detailed client params
func (o *CountServerDetailedClientParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRegion adds the region to the count server detailed client params
func (o *CountServerDetailedClientParams) WithRegion(region *string) *CountServerDetailedClientParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the count server detailed client params
func (o *CountServerDetailedClientParams) SetRegion(region *string) {
	o.Region = region
}

// WriteToRequest writes these params to a swagger request
func (o *CountServerDetailedClientParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
				return err
			}
		}

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
