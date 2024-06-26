// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package platform_achievement

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclientmodels"
)

// NewBulkCreatePSNEventParams creates a new BulkCreatePSNEventParams object
// with the default values initialized.
func NewBulkCreatePSNEventParams() *BulkCreatePSNEventParams {
	var ()
	return &BulkCreatePSNEventParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkCreatePSNEventParamsWithTimeout creates a new BulkCreatePSNEventParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkCreatePSNEventParamsWithTimeout(timeout time.Duration) *BulkCreatePSNEventParams {
	var ()
	return &BulkCreatePSNEventParams{

		timeout: timeout,
	}
}

// NewBulkCreatePSNEventParamsWithContext creates a new BulkCreatePSNEventParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkCreatePSNEventParamsWithContext(ctx context.Context) *BulkCreatePSNEventParams {
	var ()
	return &BulkCreatePSNEventParams{

		Context: ctx,
	}
}

// NewBulkCreatePSNEventParamsWithHTTPClient creates a new BulkCreatePSNEventParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkCreatePSNEventParamsWithHTTPClient(client *http.Client) *BulkCreatePSNEventParams {
	var ()
	return &BulkCreatePSNEventParams{
		HTTPClient: client,
	}
}

/*BulkCreatePSNEventParams contains all the parameters to send to the API endpoint
for the bulk create psn event operation typically these are written to a http.Request
*/
type BulkCreatePSNEventParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *achievementclientmodels.ModelsBulkCreatePSNEvents
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

// WithTimeout adds the timeout to the bulk create psn event params
func (o *BulkCreatePSNEventParams) WithTimeout(timeout time.Duration) *BulkCreatePSNEventParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk create psn event params
func (o *BulkCreatePSNEventParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk create psn event params
func (o *BulkCreatePSNEventParams) WithContext(ctx context.Context) *BulkCreatePSNEventParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk create psn event params
func (o *BulkCreatePSNEventParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk create psn event params
func (o *BulkCreatePSNEventParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk create psn event params
func (o *BulkCreatePSNEventParams) WithHTTPClient(client *http.Client) *BulkCreatePSNEventParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk create psn event params
func (o *BulkCreatePSNEventParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk create psn event params
func (o *BulkCreatePSNEventParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BulkCreatePSNEventParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the bulk create psn event params
func (o *BulkCreatePSNEventParams) WithBody(body *achievementclientmodels.ModelsBulkCreatePSNEvents) *BulkCreatePSNEventParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk create psn event params
func (o *BulkCreatePSNEventParams) SetBody(body *achievementclientmodels.ModelsBulkCreatePSNEvents) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk create psn event params
func (o *BulkCreatePSNEventParams) WithNamespace(namespace string) *BulkCreatePSNEventParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk create psn event params
func (o *BulkCreatePSNEventParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *BulkCreatePSNEventParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
