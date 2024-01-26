// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package mock_matchmaking

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

// NewBulkCreateMockTicketsParams creates a new BulkCreateMockTicketsParams object
// with the default values initialized.
func NewBulkCreateMockTicketsParams() *BulkCreateMockTicketsParams {
	var ()
	return &BulkCreateMockTicketsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkCreateMockTicketsParamsWithTimeout creates a new BulkCreateMockTicketsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkCreateMockTicketsParamsWithTimeout(timeout time.Duration) *BulkCreateMockTicketsParams {
	var ()
	return &BulkCreateMockTicketsParams{

		timeout: timeout,
	}
}

// NewBulkCreateMockTicketsParamsWithContext creates a new BulkCreateMockTicketsParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkCreateMockTicketsParamsWithContext(ctx context.Context) *BulkCreateMockTicketsParams {
	var ()
	return &BulkCreateMockTicketsParams{

		Context: ctx,
	}
}

// NewBulkCreateMockTicketsParamsWithHTTPClient creates a new BulkCreateMockTicketsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkCreateMockTicketsParamsWithHTTPClient(client *http.Client) *BulkCreateMockTicketsParams {
	var ()
	return &BulkCreateMockTicketsParams{
		HTTPClient: client,
	}
}

/*BulkCreateMockTicketsParams contains all the parameters to send to the API endpoint
for the bulk create mock tickets operation typically these are written to a http.Request
*/
type BulkCreateMockTicketsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*matchmakingclientmodels.ModelsMatchingParty
	/*ChannelName
	  channel name, accept snake_case, lowercase, and numeric

	*/
	ChannelName string
	/*Namespace
	  namespace of the game, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the bulk create mock tickets params
func (o *BulkCreateMockTicketsParams) WithTimeout(timeout time.Duration) *BulkCreateMockTicketsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk create mock tickets params
func (o *BulkCreateMockTicketsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk create mock tickets params
func (o *BulkCreateMockTicketsParams) WithContext(ctx context.Context) *BulkCreateMockTicketsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk create mock tickets params
func (o *BulkCreateMockTicketsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk create mock tickets params
func (o *BulkCreateMockTicketsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk create mock tickets params
func (o *BulkCreateMockTicketsParams) WithHTTPClient(client *http.Client) *BulkCreateMockTicketsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk create mock tickets params
func (o *BulkCreateMockTicketsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk create mock tickets params
func (o *BulkCreateMockTicketsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *BulkCreateMockTicketsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the bulk create mock tickets params
func (o *BulkCreateMockTicketsParams) WithBody(body []*matchmakingclientmodels.ModelsMatchingParty) *BulkCreateMockTicketsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk create mock tickets params
func (o *BulkCreateMockTicketsParams) SetBody(body []*matchmakingclientmodels.ModelsMatchingParty) {
	o.Body = body
}

// WithChannelName adds the channelName to the bulk create mock tickets params
func (o *BulkCreateMockTicketsParams) WithChannelName(channelName string) *BulkCreateMockTicketsParams {
	o.SetChannelName(channelName)
	return o
}

// SetChannelName adds the channelName to the bulk create mock tickets params
func (o *BulkCreateMockTicketsParams) SetChannelName(channelName string) {
	o.ChannelName = channelName
}

// WithNamespace adds the namespace to the bulk create mock tickets params
func (o *BulkCreateMockTicketsParams) WithNamespace(namespace string) *BulkCreateMockTicketsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk create mock tickets params
func (o *BulkCreateMockTicketsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *BulkCreateMockTicketsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param channelName
	if err := r.SetPathParam("channelName", o.ChannelName); err != nil {
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
