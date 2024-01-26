// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_download_count_legacy

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

// NewAddDownloadCountParams creates a new AddDownloadCountParams object
// with the default values initialized.
func NewAddDownloadCountParams() *AddDownloadCountParams {
	var ()
	return &AddDownloadCountParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAddDownloadCountParamsWithTimeout creates a new AddDownloadCountParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAddDownloadCountParamsWithTimeout(timeout time.Duration) *AddDownloadCountParams {
	var ()
	return &AddDownloadCountParams{

		timeout: timeout,
	}
}

// NewAddDownloadCountParamsWithContext creates a new AddDownloadCountParams object
// with the default values initialized, and the ability to set a context for a request
func NewAddDownloadCountParamsWithContext(ctx context.Context) *AddDownloadCountParams {
	var ()
	return &AddDownloadCountParams{

		Context: ctx,
	}
}

// NewAddDownloadCountParamsWithHTTPClient creates a new AddDownloadCountParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAddDownloadCountParamsWithHTTPClient(client *http.Client) *AddDownloadCountParams {
	var ()
	return &AddDownloadCountParams{
		HTTPClient: client,
	}
}

/*AddDownloadCountParams contains all the parameters to send to the API endpoint
for the add download count operation typically these are written to a http.Request
*/
type AddDownloadCountParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ContentID
	  content ID

	*/
	ContentID string
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

// WithTimeout adds the timeout to the add download count params
func (o *AddDownloadCountParams) WithTimeout(timeout time.Duration) *AddDownloadCountParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the add download count params
func (o *AddDownloadCountParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the add download count params
func (o *AddDownloadCountParams) WithContext(ctx context.Context) *AddDownloadCountParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the add download count params
func (o *AddDownloadCountParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the add download count params
func (o *AddDownloadCountParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the add download count params
func (o *AddDownloadCountParams) WithHTTPClient(client *http.Client) *AddDownloadCountParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the add download count params
func (o *AddDownloadCountParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the add download count params
func (o *AddDownloadCountParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AddDownloadCountParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithContentID adds the contentID to the add download count params
func (o *AddDownloadCountParams) WithContentID(contentID string) *AddDownloadCountParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the add download count params
func (o *AddDownloadCountParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the add download count params
func (o *AddDownloadCountParams) WithNamespace(namespace string) *AddDownloadCountParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the add download count params
func (o *AddDownloadCountParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AddDownloadCountParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
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
