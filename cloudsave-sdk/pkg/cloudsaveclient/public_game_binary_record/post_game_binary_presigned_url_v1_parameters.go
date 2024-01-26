// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_game_binary_record

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// NewPostGameBinaryPresignedURLV1Params creates a new PostGameBinaryPresignedURLV1Params object
// with the default values initialized.
func NewPostGameBinaryPresignedURLV1Params() *PostGameBinaryPresignedURLV1Params {
	var ()
	return &PostGameBinaryPresignedURLV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPostGameBinaryPresignedURLV1ParamsWithTimeout creates a new PostGameBinaryPresignedURLV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPostGameBinaryPresignedURLV1ParamsWithTimeout(timeout time.Duration) *PostGameBinaryPresignedURLV1Params {
	var ()
	return &PostGameBinaryPresignedURLV1Params{

		timeout: timeout,
	}
}

// NewPostGameBinaryPresignedURLV1ParamsWithContext creates a new PostGameBinaryPresignedURLV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPostGameBinaryPresignedURLV1ParamsWithContext(ctx context.Context) *PostGameBinaryPresignedURLV1Params {
	var ()
	return &PostGameBinaryPresignedURLV1Params{

		Context: ctx,
	}
}

// NewPostGameBinaryPresignedURLV1ParamsWithHTTPClient creates a new PostGameBinaryPresignedURLV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPostGameBinaryPresignedURLV1ParamsWithHTTPClient(client *http.Client) *PostGameBinaryPresignedURLV1Params {
	var ()
	return &PostGameBinaryPresignedURLV1Params{
		HTTPClient: client,
	}
}

/*PostGameBinaryPresignedURLV1Params contains all the parameters to send to the API endpoint
for the post game binary presigned urlv1 operation typically these are written to a http.Request
*/
type PostGameBinaryPresignedURLV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *cloudsaveclientmodels.ModelsUploadBinaryRecordRequest
	/*Key
	  key of record

	*/
	Key string
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

// WithTimeout adds the timeout to the post game binary presigned urlv1 params
func (o *PostGameBinaryPresignedURLV1Params) WithTimeout(timeout time.Duration) *PostGameBinaryPresignedURLV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the post game binary presigned urlv1 params
func (o *PostGameBinaryPresignedURLV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the post game binary presigned urlv1 params
func (o *PostGameBinaryPresignedURLV1Params) WithContext(ctx context.Context) *PostGameBinaryPresignedURLV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the post game binary presigned urlv1 params
func (o *PostGameBinaryPresignedURLV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the post game binary presigned urlv1 params
func (o *PostGameBinaryPresignedURLV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the post game binary presigned urlv1 params
func (o *PostGameBinaryPresignedURLV1Params) WithHTTPClient(client *http.Client) *PostGameBinaryPresignedURLV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the post game binary presigned urlv1 params
func (o *PostGameBinaryPresignedURLV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the post game binary presigned urlv1 params
func (o *PostGameBinaryPresignedURLV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PostGameBinaryPresignedURLV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the post game binary presigned urlv1 params
func (o *PostGameBinaryPresignedURLV1Params) WithBody(body *cloudsaveclientmodels.ModelsUploadBinaryRecordRequest) *PostGameBinaryPresignedURLV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the post game binary presigned urlv1 params
func (o *PostGameBinaryPresignedURLV1Params) SetBody(body *cloudsaveclientmodels.ModelsUploadBinaryRecordRequest) {
	o.Body = body
}

// WithKey adds the key to the post game binary presigned urlv1 params
func (o *PostGameBinaryPresignedURLV1Params) WithKey(key string) *PostGameBinaryPresignedURLV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the post game binary presigned urlv1 params
func (o *PostGameBinaryPresignedURLV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the post game binary presigned urlv1 params
func (o *PostGameBinaryPresignedURLV1Params) WithNamespace(namespace string) *PostGameBinaryPresignedURLV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the post game binary presigned urlv1 params
func (o *PostGameBinaryPresignedURLV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PostGameBinaryPresignedURLV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
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
